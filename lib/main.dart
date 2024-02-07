import 'package:azkar/service/dio.dart';
import 'package:azkar/src/app_root.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp( AppRoot());
}

