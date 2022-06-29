import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:eventify/eventify.dart';
// import 'package:web_socket_channel/io.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class Transport extends EventEmitter {
  IO.Socket? socket;
  String? url;
  bool? canReconnect = false;
  int retryCount = 0;
  int? maxRetryCount;
  Timer? timer;
  bool closed = false;

  Transport({required this.url, this.canReconnect, this.maxRetryCount = 1});

  void connect() async {
    bool? isSecured = url?.startsWith('wss');
    try {
      if (retryCount <= maxRetryCount!) {
        retryCount++;
        socket = IO.io(url, <String, dynamic>{
          'transports': ['websocket'],
          'autoConnect': true,
          'secure': isSecured,
        });

        print(url);

        socket!.connect();
        socket!.onConnect((data) => {print('Connect: ${socket!.id}')});
        listenEvents();
      } else {
        emit('failed');
      }
    } catch (error) {
      print(error);
      connect();
    }
  }

  void listenEvents() {
    socket!.on("message", handleMessage);
    // socket.on("update-user-list", (data) => {print(data)});
    handleOpen();
  }

  void remoteEvents() {}

  void handleOpen() {
    sendHeartbeat();
    this.emit('open');
  }

  void handleMessage(dynamic message) {
    print('handleMessage: $message');
    this.emit('message', null, message);
  }

  void handleClose() {
    reset();
    if (!closed) {
      connect();
    }
  }

  void handleError(Object error) {
    print(error);
    reset();
    if (!closed) {
      connect();
    }
  }

  void send(String message) {
    socket!.emit("message", message);
  }

  void sendHeartbeat() {
    timer = Timer.periodic(Duration(seconds: 10), (timer) {
      //TODO changements
      send(json.encode({'type': 'heartbeat'}));
    });
  }

  void reset() {
    if (timer != null) {
      timer!.cancel();
      timer = null;
    } //TODO changements Socket close but here there is no code
    // if (channel != null) {
    //   channel.sink.close();
    //   channel = null;
    // }
  }

  void close() {
    closed = true;
    destroy();
  }

  void destroy() {
    reset();
    url = '';
  }

  void reconnect() {
    retryCount = 0;
    connect();
  }
}
