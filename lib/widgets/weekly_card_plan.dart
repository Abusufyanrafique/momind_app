import 'package:flutter/material.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';

class WeeklyPlansCard extends StatelessWidget {
  const WeeklyPlansCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 343,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          
          color: Colors.white,
           borderRadius: BorderRadius.only(
      topLeft: Radius.circular(16),
      bottomLeft: Radius.circular(16),
      topRight: Radius.circular(20),
      bottomRight: Radius.circular(20),
    ),
          // borderRadius: BorderRadius.all(Radius.circular(10)),
          // border: Border.all(color: Color(0xFFB5C9F8), width: 1.5),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.05),
          //     blurRadius: 10,
          //     offset: Offset(0, 4),
          //   ),
          // ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF94D9E8), Color(0xFF67A9CE)],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child:AppText(AppStrings.weekly,  size: 18, fontFamily: "Roboto", fontWeight: null)
            
            ),

            // Monday Text
            Padding(
              padding: EdgeInsets.fromLTRB(16, 12, 16, 4),
              child:AppText(AppStrings.monday, fontFamily: "Roboto", fontWeight: null)
            
              
            ),

            // Task 1
            _taskItem('Finish research for new project.'),
            SizedBox(height: 10,),
            _taskItem('Make new video for YouTube.'),
            SizedBox(height: 10,),
            _taskItem('30 Min Instagram live session.'),
            SizedBox(height: 10,),
            _taskItem('Hire a Video Editor.'),
            SizedBox(height: 10,),
            _taskItem('Research for investment opportunities.'),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

   Widget _taskItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 6),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 6),
        decoration: BoxDecoration(
          
          color: Color(0xFFE2F0FB),
          borderRadius: BorderRadius.circular(41),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                  color: Color(0xFF464749),
                  fontSize: 14),
              ),
            ),
            Icon(Icons.radio_button_unchecked, color: Color(0xFF67A9CE)),
          ],
        ),
      ),
    );
  }
}