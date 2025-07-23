import 'package:flutter/material.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';
import 'package:momind/widgets/custom_appbar.dart';
import 'package:momind/widgets/therapy_card.dart';

class SearchScreen1 extends StatefulWidget {
  const SearchScreen1({super.key});

  @override
  State<SearchScreen1> createState() => _SearchScreen1State();
}

class _SearchScreen1State extends State<SearchScreen1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
  title: 'Hi!',
  rightIcon1: Icons.mood,
  rightIcon2: Icons.notifications_none,
  onRightIcon1Tap: () {},
  onRightIcon2Tap: () {},
  onLeftTap: () {},
  onRightTap: () {}, 
  titlecolor: Colors.white,
  color: Colors.blue, text: 'Hi!', textsize: 14, bottom: TabBar(tabs: []),
) ,
      backgroundColor: Color(0xFFEAF2FF),
    body: Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 1),
          child: Column(children: [
             TherapyCard(),
            SizedBox(height: 52,),
         
             Container(
              height: 97,
              width: 343,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
          colors: [Color(0xFFBBD4FF), Color(0xFF85A7E4)], // light blue gradient
                 
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [  

                  AppText(AppStrings.exercise, size: 18, fontFamily: "Roboto", fontWeight: null),
                 Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 20,
          ),],),
            
                
                SizedBox(height: 4),
                AppText(AppStrings.emotions, size: 12, fontFamily: "Roboto", fontWeight: null),
               
                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset("assets/images/flower.png"),
          ),
        
              ],
            ),
          ),
          SizedBox(height: 24,),
             Row(children: [
          AppText(AppStrings.guide, size: 16, color: Color(0xFF464749), fontFamily: "Roboto", fontWeight: null),
          SizedBox(width:160 ,),
          Image.asset("assets/images/arrow.png"),
          ],),
          
          SizedBox(height: 24,),
           Row(children: [
                           Image.asset(
                "assets/images/meditation.png"),
                SizedBox(width: 6,),
               Image.asset("assets/images/women.png"),
                          ],),
          ],),
        ),
      ),
    ),
    );
  }
}