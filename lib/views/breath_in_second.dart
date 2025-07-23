
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_colors.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';

// ignore: camel_case_types
class Breath_in_Second extends StatefulWidget {
  const Breath_in_Second({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Breath_in_SecondState createState() => _Breath_in_SecondState();
}

// ignore: camel_case_types
class _Breath_in_SecondState extends State<Breath_in_Second> {
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
              Container(
                width: 334,
                height: 334,
                decoration: BoxDecoration(
                  color: Color(0xFFC5D7F7), 
                  shape: BoxShape.circle,
                  // border: Border.all(color: Colors.white, width: 2),
                ),
                child: Center(
                  child: Container(
                    width: 98,
                    height: 98,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap:() {
                          Get.toNamed('breathinsecond');
                        },
                        child: GestureDetector(
                          onTap:() {
                            Get.toNamed('Breath_in_third');
                          },
                          child: AppText(AppStrings.I,size: 24,  color: Color(0xFF4F7BCA), fontFamily: 'Roboto', fontWeight: null,)))
                    ),
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