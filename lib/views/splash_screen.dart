import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget{
  final SplashController controller = Get.put(SplashController());
   SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/daily.png', width: 200),
      ),
    );
  }

  
}