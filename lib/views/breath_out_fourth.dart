
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_colors.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';

// ignore: camel_case_types
class Breath_out_fourth extends StatefulWidget {
  const Breath_out_fourth({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Breath_out_fourthState createState() => _Breath_out_fourthState();
}

// ignore: camel_case_types
class _Breath_out_fourthState extends State<Breath_out_fourth> {
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
                        Get.toNamed('breathe_out_fifth');
                      },
                      child: AppText(AppStrings.O,size: 24,   color: Color(0xFF4F7BCA), fontFamily: 'Roboto', fontWeight: null,))
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