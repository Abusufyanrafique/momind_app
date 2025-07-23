import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_colors.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';

class BreathingScreen extends StatefulWidget {
  const BreathingScreen({super.key});

  @override
  State<BreathingScreen> createState() => _BreathingScreenState();
}

class _BreathingScreenState extends State<BreathingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: AppColors.primaryGradient,
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(children: [
            SizedBox(height: 300,),
            GestureDetector(
              onTap:() {
                Get.toNamed('breathin');
              },
              child: AppText(AppStrings.breathing,size: 20,  color: Colors.white, fontFamily: "Roboto", fontWeight: FontWeight.w600))
          ],),
        ),
      ),
    );
  }
}