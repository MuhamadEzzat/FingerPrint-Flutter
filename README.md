# finger_print_fetch_example

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# local_auth : this the Flutter Package 
We can use this method getAvailableBiometrics() to check on any Biometric we need in our case is FingerPrint.
authenticate() this method helps us to open a dialog to check if there is a saved Fingerprint or not.

# To integrate with iOS and Android :

## Android: 

Local_auth requires FragmentActivity instead of Activity 

in MainActivity.kt 

 import io.flutter.embedding.android.FlutterFragmentActivity

  class MainActivity: FlutterFragmentActivity() {
  }
  
Instead of 

  class MainActivity: FlutterActivity() {
  }
  
In AndroidManifest.xml 
Add  <uses-permission android:name="android.permission.USE_BIOMETRIC"/> 

## iOS: 

<key>NSFaceIDUsageDescription</key>

<string>Why is my app authenticating using face id?</string>

Inside Info.plist
