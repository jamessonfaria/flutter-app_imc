import 'dart:io';
import 'package:flutter/material.dart';
import 'package:app_imc/ui/android/material-app.dart';
import 'package:app_imc/ui/ios/cupertino-app.dart';

void main() =>
    Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());