import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:icr_academy/views/splash%20screen/splash_screen.dart';

import 'components/const.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale:const Locale('ar'),
      title: 'AI Academy',
      theme: ThemeData(
        primaryColor: kSwatchColor ,
        focusColor: kSwatchColor,
        primarySwatch: Colors.orange,
      ),
      home:  SplashScreen(),
    );
  }
}
