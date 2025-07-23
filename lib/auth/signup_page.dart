
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';
import 'package:momind/widgets/custom_button.dart';
import 'package:momind/widgets/custom_text_field.dart';



class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              SizedBox(height: 100,),
              AppText(
                AppStrings.signup,
                size: 24,
              color: Color(0xFF4F7BCA),
                fontFamily: 'Roboto', fontWeight: null,
              ),
              SizedBox(height: 30),
        
              AppText(AppStrings.name, size: 12, fontFamily: "Roboto", fontWeight: null,color:Colors.black),
              SizedBox(height: 16),
              CustomTextField(  label: 'Enter Full Name', hint: '', widht: 327, height: 44, icon: Icons.person,iconcolor: Color(0xFF4F7BCA),),
              SizedBox(height: 16),
               AppText(AppStrings.phone,size: 12, fontFamily: "Roboto", fontWeight: null,color:Colors.black,),
               SizedBox(height: 16),
              CustomTextField(  label: 'Enter Phone Number', hint: '', widht: 327, height: 44,icon: Icons.phone ,iconcolor: Color(0xFF4F7BCA),),
              SizedBox(height: 16),
               AppText(AppStrings.referral, size: 12, fontFamily: "Roboto", fontWeight: null,color:Colors.black),
               SizedBox(height: 16),
              CustomTextField(  label: 'Enter Referral Code', hint: '', widht: 327, height: 44, icon: Icons.local_offer,iconcolor: Color(0xFF4F7BCA), ),
              SizedBox(height: 35),
        
              // Sign Up Button
              CustomButton(onPressed:  () {
                
              }, widht: 327, height: 50, text: 'SignUp',
              color:Color(0xFF4F7BCA), buttontextcolor: Colors.white, borderColor: null,
              ),
           
              SizedBox(height: 20),
        
              Center(
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed("loginpage");
                  },
                  child: AppText(AppStrings.signingup,size: 12, fontFamily: 'Roboto', fontWeight: null,color: Colors.black,)),
              ),
              Center(
                child: AppText(AppStrings.termsAndConditions,size: 12, fontFamily: 'Roboto', fontWeight: FontWeight.bold,color: Colors.black,),
              ),
              SizedBox(height: 20,),
              Image.asset('assets/images/divider.png'),
              SizedBox(height: 20,),
             Container(
               decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF4F7BCA)),
                  borderRadius: BorderRadius.circular(24)
                ),
              child: CustomButton(onPressed: () {  }, widht: 327, height: 50, text: 'Log In', color: Colors.white,  buttontextcolor: Color(0xFF4F7BCA), borderColor: null,)),
              SizedBox(height: 20),
        
            ],
          ),
        ),
      ),
    );
  }}