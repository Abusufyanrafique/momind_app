
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_colors.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';

// ignore: camel_case_types
class Breath_in_third extends StatefulWidget {
  const Breath_in_third({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Breath_in_thirdState createState() => _Breath_in_thirdState();
}

// ignore: camel_case_types
class _Breath_in_thirdState extends State<Breath_in_third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: const BoxDecoration(
            gradient: AppColors.primaryGradient,
          ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
             AppText(AppStrings.breathein,size: 24, fontFamily: "Roboto", fontWeight: null),
              SizedBox(height: 130), 
              Center(
                child: Container(
                  width: 334,
                  height: 334,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap:() {
                        Get.toNamed('breath_out_fourth');
                      },
                      child: AppText(AppStrings.I,size: 24,   color: Color(0xFF4F7BCA), fontFamily: 'Roboto', fontWeight: null,))
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}