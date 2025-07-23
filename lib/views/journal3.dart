import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';
import 'package:momind/widgets/custom_appbar.dart';
import 'package:momind/widgets/weekly_card_plan.dart';

class Journal3 extends StatefulWidget {
  const Journal3({super.key});

  @override
  State<Journal3> createState() => _Journal3State();
}

class _Journal3State extends State<Journal3> {
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
  color: Colors.blue, text: 'Journal', textsize: 14, bottom: TabBar(tabs: []),
),

      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
              
         decoration: BoxDecoration(
         gradient: LinearGradient(colors: [
            Color(0xFFEEF4FF),
            Color(0xFFDBE5F8),
          ]),
),          child: Column(
            children: [
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
                child: SingleChildScrollView(
                 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(AppStrings.want, size: 17,
                       color: Color(0xFF464749),
                     
                        fontFamily: "fontFamily",
                         fontWeight: null),
                      // const SizedBox(height: 12),
                     
                    ],
                  ),
                ),
              ),
                  ],
                ),
              ),
              
              Column(
                children: [
                 WeeklyPlansCard()
                ],
              ),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  // AppText(AppStrings.weekly, fontFamily: "Roboto", fontWeight: null),
              
                        SizedBox(height: 24,),
                        Container(
                          height: 168,
                          
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
                              AppText(AppStrings.amet1, size: 13, color: Colors.black, fontFamily: "fontFamily", fontWeight: null),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed("");
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
                    )
           ,]),
        ))
    );
  }
}

 Widget _taskItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Color(0xFFE2F0FB),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                text,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Icon(Icons.radio_button_unchecked, color: Colors.grey),
          ],
        ),
      ),
    );
  }
