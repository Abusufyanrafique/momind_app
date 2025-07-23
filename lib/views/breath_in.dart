
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_colors.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';

// ignore: camel_case_types
class Breathe_in extends StatefulWidget {
  const Breathe_in({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Breathe_inState createState() => _Breathe_inState();
}

// ignore: camel_case_types
class _Breathe_inState extends State<Breathe_in> {
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
                width: 126,
                height: 126,
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
                        child: AppText(AppStrings.I,color: Color(0xFF4F7BCA), fontFamily: 'Roboto', fontWeight:null,))
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