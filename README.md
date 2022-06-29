# How to install
**Please Do the Respected** 
```yaml
flutter pub add webrtc_full_wrapper
``` 
After this
## Steps
```dart
import 'package:webrtc_full_wrapper/webrtc_full_wrapper.dart';

```
**# Important INFO**<br>
>Please check your <br>
># socket.io-client-dart and server version i prefer nullsafety

Port of awesome JavaScript Node.js library - [Socket.io-client v2.0.1~v3.0.3](https://github.com/socketio/socket.io-client) - in Dart

### Version info:

| socket.io-client-dart | Socket.io Server
-------------------|----------------
`v0.9.*` ~ `v1.* ` | `v2.*`
`v2.*`             | `v3.*` & `v4.*`

## Usage

Add `full_webrtc_wrapper` as a [dependency in your pubspec.yaml file](https://flutter.io/using-packages/).

### iOS

Add the following entry to your _Info.plist_ file, located in `<project root>/ios/Runner/Info.plist`:

```xml
<key>NSCameraUsageDescription</key>
<string>$(PRODUCT_NAME) Camera Usage!</string>
<key>NSMicrophoneUsageDescription</key>
<string>$(PRODUCT_NAME) Microphone Usage!</string>
```

This entry allows your app to access camera and microphone.

### Android

Ensure the following permission is present in your Android Manifest file, located in `<project root>/android/app/src/main/AndroidManifest.xml`:

```xml
<uses-feature android:name="android.hardware.camera" />
<uses-feature android:name="android.hardware.camera.autofocus" />
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.RECORD_AUDIO" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
<uses-permission android:name="android.permission.CHANGE_NETWORK_STATE" />
<uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS" />
```

If you need to use a Bluetooth device, please add:

```xml
<uses-permission android:name="android.permission.BLUETOOTH" android:maxSdkVersion="30" />
<uses-permission android:name="android.permission.BLUETOOTH_ADMIN" android:maxSdkVersion="30" />
<uses-permission android:name="android.permission.BLUETOOTH_CONNECT" />
```

The Flutter project template adds it, so it may already be there.

Also you will need to set your build settings to Java 8, because official WebRTC jar now uses static methods in `EglBase` interface. Just add this to your app level `build.gradle`:

```groovy
android {
    //...
    compileOptions {
        sourceCompatibility JavaVersion.VERSION_1_8
        targetCompatibility JavaVersion.VERSION_1_8
    }
}
```

If necessary, in the same `build.gradle` you will need to increase `minSdkVersion` of `defaultConfig` up to `23` (currently default Flutter generator set it to `16`).

### Important reminder
When you compile the release apk, you need to add the following operations,
[Setup Proguard Rules](https://github.com/flutter-webrtc/flutter-webrtc/commit/d32dab13b5a0bed80dd9d0f98990f107b9b514f4) 
<br>
**NEVER FORGET ADDING PROGUARD RULE FILE AND REQUIRED PERMISSIONS(Android, IOS ....etc) FOR RELATED (DEPENDENT) library**<br>
**For API References for Better Understanding Head to [Github](https://github.com/manishmg3994/webrtc_full_wrapper)**
# Preview

![Wrapper](https://raw.githubusercontent.com/Manishmg3994/webrtc_full_wrapper/main/a.png "Video Call screen")|![designs](https://raw.githubusercontent.com/Manishmg3994/webrtc_full_wrapper/main/b.png "Chat messanging with socket")><br>
![cool](https://raw.githubusercontent.com/Manishmg3994/webrtc_full_wrapper/main/c.png "Socket used")

---


# How to Use 
**For detailed Info visit [Github](https://github.com/manishmg3994) or Try Watching Youtube Videos <a href="https://www.youtube.com/channel/UC1WAYyCbaUTY1nR_LV1Qiag?sub_confirmation=1">
[![youtube](https://img.shields.io/badge/-Antinna-313131?style=flat-square&labelColor=313131&logo=youtube&logoColor=red&color=313131)](https://www.youtube.com/channel/UC1WAYyCbaUTY1nR_LV1Qiag)
  </a>**<br>
**For more help join our <a href = "https://t.me/AntinnaYT"><img src="https://img.shields.io/endpoint?style=social&url=https%3A%2F%2Frunkit.io%2Fdamiankrawczyk%2Ftelegram-badge%2Fbranches%2Fmaster%3Furl%3Dhttps%3A%2F%2Ft.me%2FAntinnaYT" target="_blank"></a>**




## Features
>- Awesome Backend Freely Provided (Licensed)<br>
>- WebRTC Used<br>
>- Fast ,Simple,Easy to Integrate.<br>
>- Chat with socket.io <br>
>- Fully customizable<br>
>- **can be used over Proxies unlike websocket because it uses socket.io**
<br>
...and many More








<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
## Node Server code
Please visit [Github](https://github.com/manishmg3994/Signaling_Server_socketio) 
## Flutter App  Source Code
Please visit [Github](https://github.com/manishmg3994/meeting_flutter_app_socketio) 
## React  App  Source Code
Please visit [Github](https://github.com/manishmg3994/meeting_React_app_socketio) 
## Tutorials
 Try Watching Youtube Videos <a href="https://www.youtube.com/channel/UC1WAYyCbaUTY1nR_LV1Qiag?sub_confirmation=1">
[![youtube](https://img.shields.io/badge/-Antinna-313131?style=flat-square&labelColor=313131&logo=youtube&logoColor=red&color=313131)](https://www.youtube.com/channel/UC1WAYyCbaUTY1nR_LV1Qiag)

## Examples
--MeetX app <br>
--Antinna  App <br>
So on...
## Articles
[LEARN MORE](https://web.dev/webrtc-basics/)

## Belongs/Owner
-- Meetx video app Owner is the Real Owner for This not Me a Great Thanks to Him.
## Then who Am I
Please Visit my  [Github Account](https://github.com/manishmg3994) and Subscribe My <a href="https://www.youtube.com/channel/UC1WAYyCbaUTY1nR_LV1Qiag?sub_confirmation=1">
[![youtube](https://img.shields.io/badge/-Antinna-313131?style=flat-square&labelColor=313131&logo=youtube&logoColor=red&color=313131)](https://www.youtube.com/channel/UC1WAYyCbaUTY1nR_LV1Qiag) for such more Important Updates .


## Features and bugs
**BETTER THEN WEBSOCKET because it uses SOCKET.IO** ---**FEATURE**

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/manishmg3994/webrtc_full_wrapper/issues






## Additional information
**YOU CAN** <a href="https://github.com/sponsors/Manishmg3994" target="_blank"> ![Sponser](https://img.shields.io/badge/sponsor-30363D?style=for-the-badge&logo=GitHub-Sponsors&logoColor=#white)</a> **US**.
if you found our services helpful<br>
**DM FOR UPI**
<br>
**project root directories**<br>
```
|-- CHANGELOG.md 
|-- LICENSE
|-- README.md
|-- analysis_options.yaml
|-- lib
|   |-- sdk
|   |   |-- connection.dart
|   |   |-- meeting.dart
|   |   |-- message_format.dart
|   |   |-- message_payload.dart
|   |   |-- payload_data.dart
|   |   |-- peer_connection.dart
|   |   '-- transport.dart
|   '-- webrtc_full_wrapper.dart
|-- pubspec.yaml
'-- test
    '-- webrtc_full_wrapper_test.dart
```
