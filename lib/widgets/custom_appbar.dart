import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? rightIcon1;
  final IconData? rightIcon2;
  final VoidCallback onRightIcon1Tap;
  final VoidCallback onRightIcon2Tap;
  final String text;
   final double textsize;

  final Color  titlecolor;
  final Color?iconcolor;
  final Color color;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.rightIcon1,
    required this.rightIcon2,
    required this.onRightIcon1Tap,
    required this.onRightIcon2Tap,   required Null Function() onLeftTap, required Null Function() onRightTap,
     required this.titlecolor, required this.color, this.iconcolor, required this.text, required this.textsize, required TabBar bottom,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFEEF4FF),
            Color(0xFFDBE5F8),
          ]),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left: Title
            Text(
              text,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Color(0xFF4F7BCA),
              ),
            ),

            // Right: Icons
            Row(
              children: [
                IconButton(
                  icon: Icon(rightIcon1, color: color),
                  onPressed: onRightIcon1Tap,
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: Icon(rightIcon2, color: color),
                  onPressed: onRightIcon2Tap,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
