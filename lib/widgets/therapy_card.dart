import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';

class TherapyCard extends StatelessWidget {
  const TherapyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
     Padding(
       padding: const EdgeInsets.only(left: 16.0,right: 16,top: 32),
       child: Container(
         height: 377,
         width:343,
         // padding: const EdgeInsets.all(16),
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(20),
           boxShadow: [
             BoxShadow(
               color: Colors.black12,
               blurRadius: 10,
               offset: Offset(0, 4),
             ),
           ],
         ),
         child: Stack(
           clipBehavior: Clip.none,
           children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 // Close Button (Top Right)
                 Align(
                   alignment: Alignment.topRight,
                   child: GestureDetector(
                     onTap: () {
                       // Add close action here
                     },
                     child: Icon(Icons.close, color: Colors.grey),
                   ),
                 ),
                 const SizedBox(height: 8),
       
                 // Title
                 Center(child: AppText(AppStrings.daily, size: 22, color: Color(0xFF4F7BCA), fontFamily: "Roboto", fontWeight: FontWeight.w600)),
                  SizedBox(height: 12),
       
                 // Scrollable Description
                 Container(
                   height: 200,
                   width: 400,
               
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: AppText(AppStrings.amet, color: Colors.black, fontFamily: "Roboto", fontWeight: null),
                   ),
                 ),
                 const SizedBox(height: 16),
       
                //  Audio waveform image placeholder
                 Expanded(
                   child: Container(
                     width: double.infinity,
                     height: 40,
                     alignment: Alignment.center,
                     child: GestureDetector(
                      onTap: () {
                        Get.toNamed("searchScreen1");
                      },
                       child: Image.asset(
                         'assets/images/wave.png', // Replace with your waveform image
                         fit: BoxFit.contain,
                       ),
                     ),
                   ),
                 ),
       
                 const SizedBox(height: 50), // Space for floating play button
               ],
             ),
       
             // Floating Play Button
             Positioned(
               bottom: 100,
               left: 0,
               right: 0,
               child: Center(
                 child: Container(
                   decoration: const BoxDecoration(
                     color: Color(0xFF85A7E4),
                     shape: BoxShape.circle,
                   ),
                   child: IconButton(
                     icon: const Icon(Icons.play_arrow, color: Colors.white),
                     onPressed: () {
                       // Add play functionality
                     },
                   ),
                 ),
               ),
             ),
           ],
         ),
       ),
     );
  }
}
