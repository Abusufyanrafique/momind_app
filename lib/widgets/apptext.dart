import 'package:flutter/material.dart';
import 'package:momind/constants/app_colors.dart';

class AppText extends StatelessWidget {
  final String text;
  final double size;
  
  final Color color;
  final FontWeight?  fontWeight;
  final String   fontFamily;
  final TextAlign? textAlign;
   final Alignment? alignment;
  const AppText(
    this.text, {
    this.size = 16,
    this.color = AppColors.textwhite,
   super.key, required this.fontFamily, required this.fontWeight,
    this.textAlign,
     this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // alignment: alignment ?? Alignment.centerLeft,
      child: Text(
        text,
        textAlign: textAlign,
        
         style: TextStyle(
          
          fontSize: size, fontWeight: fontWeight, color: color,
         fontFamily: fontFamily),
      ),
    );
  }
}