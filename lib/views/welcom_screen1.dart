import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_colors.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';

// ignore: camel_case_types
class welcom_screen1 extends StatelessWidget {
  const welcom_screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
         decoration: BoxDecoration(
          gradient:AppColors.primaryGradient,
          
          
          
          ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 120),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 25,),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('welcom_screen2');
                  },
                  child: AppText(AppStrings.text1, size: 32,
                   fontWeight: FontWeight.normal,fontFamily: 'Roboto',
                   color: AppColors.textwhite, )),
                   SizedBox(height: 20,),
                   AppText(AppStrings.text2, size: 40,
                  fontWeight: null,fontFamily: 'Roboto',
                  color: AppColors.textwhite,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
