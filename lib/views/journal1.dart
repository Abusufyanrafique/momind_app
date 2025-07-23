import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';
import 'package:momind/widgets/custom_appbar.dart';

class Journal1 extends StatefulWidget {
  const Journal1({super.key});

  @override
  State<Journal1> createState() => _Journal1State();
}

class _Journal1State extends State<Journal1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: CustomAppBar(
  title: 'Journal',
  rightIcon1: Icons.mood,
  rightIcon2: Icons.notifications_none,
  onRightIcon1Tap: () {},
  onRightIcon2Tap: () {},
  onLeftTap: () {},
  onRightTap: () {}, 
  titlecolor: Colors.white,
  color: Color(0xFF4F7BCA),
   text: 'Journal', textsize: 14, bottom: TabBar(tabs: []),
   
),

      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // height: double.infinity,
          // width: double.infinity,
          decoration: BoxDecoration(
             gradient: LinearGradient(colors: [
            Color(0xFFEEF4FF),
            Color(0xFFDBE5F8),
          ]),
          ),
          child: Column(
            children: [
               SizedBox(height: 26,),
              Container(
                height: 168,
                // width: 300,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
                  color: Colors.white,
                  boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              Container(
                width:343,
               
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFF6B6FD1), // Soft purple gradient tone
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child:AppText(AppStrings.life, size: 18, fontFamily: "Roboto", fontWeight: null),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(AppStrings.amet1, size: 13, color: Color(0xFF464749), fontFamily: "fontFamily", fontWeight: null),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        AppText(AppStrings.add,  color: Color(0xFF6B6FD1), size: 16, fontFamily: "Roboto", fontWeight: null),
                        const SizedBox(width: 6),
                        const Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: Color(0xFF5A62D6),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                  ],
                ),
              ),
               SizedBox(height: 26,),
              Container(
                height: 168,
                // width: 300,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              Container(
                width:343,
               
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFF94D9E8), // Soft purple gradient tone
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child:AppText(AppStrings.weekly, size: 18, fontFamily: "Roboto", fontWeight: null),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(AppStrings.plan, size: 13, color: Color(0xFF464749), fontFamily: "fontFamily", fontWeight: null),
                    const SizedBox(height: 12),
                    Row(
                      children: [
          
                        AppText(AppStrings.add1, color: Color(0xFF67A9CE), fontFamily: "Roboto", fontWeight: null),
                      
                        const SizedBox(width: 6),
                        const Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: Color(0xFF67A9CE),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Container(
                height: 168,
                // width: 300,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
                  color: Colors.white,
                  boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              Container(
                width:343,
               
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFD0C2F9), // Soft purple gradient tone
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child:AppText(AppStrings.aff, size: 18, fontFamily: "Roboto", fontWeight: null),
              ),
              
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(AppStrings.amet1, size: 13, color: Color(0xFF464749), fontFamily: "fontFamily", fontWeight: null),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed("journa2");
                          },
                          child: AppText(AppStrings.add2, color: Color(0xFF5A62D6), fontFamily: "Roboto", fontWeight: null)),
                        const SizedBox(width: 6),
                        const Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: Color(0xFF5A62D6),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                  ],
                ),
              ),
            
            ],
          ),
        ),
      )
 ,
    );
  }
}