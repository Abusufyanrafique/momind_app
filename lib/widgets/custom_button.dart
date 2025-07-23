import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double? widht;
  final double? height;
  final IconData? icon;
  final Color buttontextcolor;
  final String text;
  final Color color;
  final Color? borderColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.widht,
    required this.height,
    required this.text,
    required this.color,
    required this.buttontextcolor,
    this.icon, required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht ?? 100,
      height: height ?? 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // center content
          mainAxisSize: MainAxisSize.max,
          children: [
            
            Text(
              text,
              style: TextStyle(
                color: buttontextcolor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            if (icon != null) ...[
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  icon,
                  color: buttontextcolor,
                ),
              ),
              const SizedBox(width: 8),
            ],
          ],
        ),
      ),
    );
  }
}
