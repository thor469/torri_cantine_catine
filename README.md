# torri_cantine_app

A new Flutter project of BearIT Srl.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## build code generator
flutter packages pub run build_runner build --delete-conflicting-outputs

1 - creare cartelle base 
2 - generare bloc con tasto destro bloc new bloc
3 - request e reponse con tasto destro l'ultima voce
4 - file service a mano nuovo file
5 - dependecy injection popolare i 3 file come fatto prima

## build apk - staging
'flutter build apk --flavor staging --dart-define BASE_URL=https://testapp.torricantine.it --dart-define USERNAME=ck_d987cfc71d78928da544c7ee9cc8b4daac91dfbf --dart-define PASSWORD=cs_3706ae99c6b059296ff689b4207fe25289c81e11


## build apk - production
'flutter build apk --flavor production --dart-define BASE_URL=https://shop.torricantine.it --dart-define USERNAME=ck_46b3cc7ea28ec81063524f084d7fce55a7ff281f --dart-define PASSWORD=cs_c3f7b132d5f1f4a14f05b2afbce25ccef0965408 --dart-define APP.FLAVOR=staging


## build bundle - staging
'flutter build appbundle --release --flavor staging --dart-define BASE_URL=https://testapp.torricantine.it --dart-define USERNAME=ck_d987cfc71d78928da544c7ee9cc8b4daac91dfbf --dart-define PASSWORD=cs_3706ae99c6b059296ff689b4207fe25289c81e11 --dart-define APP.FLAVOR=staging


## build bundle - production
'flutter build appbundle  --release --flavor production --dart-define BASE_URL=https://shop.torricantine.it --dart-define USERNAME=ck_46b3cc7ea28ec81063524f084d7fce55a7ff281f --dart-define PASSWORD=cs_c3f7b132d5f1f4a14f05b2afbce25ccef0965408 --dart-define APP.FLAVOR=production 



## run apk - staging
'flutter run --flavor staging --dart-define BASE_URL=https://testapp.torricantine.it --dart-define USERNAME=ck_d987cfc71d78928da544c7ee9cc8b4daac91dfbf --dart-define PASSWORD=cs_3706ae99c6b059296ff689b4207fe25289c81e11 --dart-define APP.FLAVOR=staging

'flutter run --flavor Production --dart-define BASE_URL=https://testapp.torricantine.it --dart-define USERNAME=ck_d987cfc71d78928da544c7ee9cc8b4daac91dfbf --dart-define PASSWORD=cs_3706ae99c6b059296ff689b4207fe25289c81e11 --dart-define APP.FLAVOR=staging


## run apk - production
'flutter run --flavor production --dart-define BASE_URL=https://shop.torricantine.it --dart-define USERNAME=ck_46b3cc7ea28ec81063524f084d7fce55a7ff281f --dart-define PASSWORD=cs_c3f7b132d5f1f4a14f05b2afbce25ccef0965408 --dart-define APP.FLAVOR=production