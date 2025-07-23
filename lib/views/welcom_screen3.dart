import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_colors.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';

// ignore: camel_case_types
class welcom_screen3 extends StatelessWidget {
  const welcom_screen3({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 200.0),
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppText(
                AppStrings.text1,
                size: 32,
                // weight: FontWeight.normal,
                fontFamily: 'Roboto',
                fontWeight: null,
                color: AppColors.textwhite, textAlign: null,
              ),
              const SizedBox(height: 27),
              AppText(
                AppStrings.text2,
                size: 30,
                // weight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: AppColors.textwhite,
                fontWeight: FontWeight.w600, textAlign: null,
              ),
              const SizedBox(height: 30),
              AppText(
                AppStrings.text3,
                size: 24,
                // weight: FontWeight.normal,
                fontFamily: 'Roboto',
                fontWeight: null,
                color: AppColors.textwhite, textAlign: null,
              ),
              SizedBox(height: 40,),
               GestureDetector(
                onTap:() {
                  Get.toNamed('welcome_screen4');
                },
                child: AppText(AppStrings.textlet , size: 24, fontFamily: "Roboto", fontWeight: null, textAlign: null,))
            ],
          ),
        ),
      ),
    );
  }
}
