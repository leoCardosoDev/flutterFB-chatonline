# chat0nlineapp

Aplicação Flutter de Chat Online com Firebase

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# CONFIG - pubspec.yaml
cloud_firestore: ^0.13.0+1
image_picker: ^0.6.2+3
google_sign_in: ^4.1.1
firebase_storage: ^3.1.1
firebase_auth: ^0.15.3

# CONFIG - android/build.gradle
dependencies {
        ...
        classpath 'com.google.gms:google-services:4.3.2'
    }

