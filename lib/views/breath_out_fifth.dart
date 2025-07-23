
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_colors.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';

// ignore: camel_case_types
class Breathe_out_fifth extends StatefulWidget {
  const Breathe_out_fifth({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Breathe_out_fifthState createState() => _Breathe_out_fifthState();
}

// ignore: camel_case_types
class _Breathe_out_fifthState extends State<Breathe_out_fifth> {
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
                    width: 88,
                    height: 88,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap:() {
                          Get.toNamed('breathe_out_sixth');
                        },
                        child: AppText(AppStrings.O,color: Color(0xFF4F7BCA), fontFamily: 'Roboto', fontWeight: null,))
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