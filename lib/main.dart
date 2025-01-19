import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smash_x_app/ui/auth/login/login_view.dart';
import 'package:smash_x_app/ui/auth/splashe/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      home: SplashView(),
    );
  }
}
