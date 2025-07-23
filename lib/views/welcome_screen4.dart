import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_colors.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';
import 'package:momind/widgets/custom_button.dart';

// ignore: camel_case_types
class welcom_screen4 extends StatelessWidget {
  const welcom_screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
  child: ConstrainedBox(
    constraints: BoxConstraints(
      minHeight: MediaQuery.of(context).size.height,
    ),
    child: Container(
      decoration: const BoxDecoration(
        gradient: AppColors.primaryGradient,
      ),
      width: double.infinity,
      
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 200.0),
        child: Column(
          children: [
            AppText(
              AppStrings.text1,
              size: 32,
             
              fontFamily: 'Roboto',
              fontWeight: null,
              color: AppColors.textwhite,
              textAlign: null,
            ),
            const SizedBox(height: 27),
            AppText(
              AppStrings.text2,
              size: 32,
             
              fontFamily: 'Roboto',
              color: AppColors.textwhite,
              fontWeight: FontWeight.w600,
              textAlign: null,
            ),
            const SizedBox(height: 15),
            AppText(
              AppStrings.text3,
              size: 24,
              fontWeight: FontWeight.normal,
              fontFamily: 'Roboto',
              color: AppColors.textwhite,
              textAlign: null,
            ),
            const SizedBox(height: 40),
            AppText(
              AppStrings.textlet,
              size: 24,
              fontFamily: "Roboto",
              fontWeight: null,
              textAlign: null,
            ),
            const SizedBox(height: 119),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF4F7BCA)),
                borderRadius: BorderRadius.circular(24),
              ),
              child: CustomButton(
                widht: 238,
                height: 50,
                onPressed: () {
                  Get.toNamed('signuppage');
                },
                text: 'Contiune',
                color: Colors.white,
                buttontextcolor: Color(0xFF4F7BCA),
                icon: Icons.arrow_forward,
                borderColor: null,
              ),
            )
          ],
        ),
      ),
    ),
  ),
),

    );
  }
}
