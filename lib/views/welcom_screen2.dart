import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_colors.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';

// ignore: camel_case_types
class welcom_screen2 extends StatelessWidget {
  const welcom_screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.primaryGradient,
        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 200.0),
          child: Column(
          
            children: [
              GestureDetector(
                onTap:() {
                  Get.toNamed('welcom_screen3');
                },
                child: AppText(
                  AppStrings.text1,
                  size: 24,
                  // weight: FontWeight.normal,
                  fontFamily: 'Roboto',
                  fontWeight: null,
                  color: AppColors.textwhite,
                ),
              ),
              const SizedBox(height: 40),
              AppText(
                AppStrings.text2,
                size: 32,
                // weight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: AppColors.textwhite,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 33),
              AppText(
                AppStrings.text3,
                size: 24,
                // weight: FontWeight.normal,
                fontFamily: 'Roboto',
                fontWeight: null,
                color: AppColors.textwhite,
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
