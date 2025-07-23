import 'package:flutter/material.dart';

class DayButton extends StatelessWidget {
  final String day;
  final bool isSelected;

  const DayButton({required this.day, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        day,
        style: TextStyle(
          color: isSelected ? Colors.blue[300] : Colors.white,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}