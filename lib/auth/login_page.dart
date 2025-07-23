
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';
import 'package:momind/widgets/custom_button.dart';
import 'package:momind/widgets/custom_text_field.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 50),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue[50]!, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 300,),
              AppText(
                AppStrings.loginPageTitle,
                size: 30,
                
              color: Color(0xFF4F7BCA),
                fontFamily: 'Roboto', fontWeight: null,
              ),
              SizedBox(height: 36),
               AppText(AppStrings.phone, size: 12, fontFamily: "Roboto", fontWeight: null,color:Colors.black),
               SizedBox(height: 16),
              CustomTextField(  label: 'Enter Phone Number',  widht: 327, height: 44, icon: Icons.phone, iconcolor: Color(0xFF4F7BCA), hint: '',),
            
              SizedBox(height: 40),
        
              // Sign Up Button
              CustomButton(onPressed:  () {
                
              }, widht: 327, height: 50, text: 'Log in',
              color:Color(0xFF4F7BCA), buttontextcolor: Colors.white, borderColor: null,
              ),
        
              SizedBox(height: 40,),
              Image.asset('assets/images/divider.png'),
              SizedBox(height: 33,),
             Container(
               decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF4F7BCA)),
                  borderRadius: BorderRadius.circular(24)
                ),
               child: CustomButton(onPressed: () { 
               Get.toNamed('otpscreen');
               
                }, widht: 327, height: 50, text: 'Sign Up', color: Colors.white, buttontextcolor: Color(0xFF4F7BCA), borderColor: null,),
             ),
              SizedBox(height: 20),
        
            ],
          ),
        ),
      ),
    );
  }}