import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final ValueChanged<bool?> onChanged;

  const TaskItem({
    Key? key,
    required this.title,
    required this.isCompleted,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFE6F1F8), // Light blue background
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              decoration: isCompleted ? TextDecoration.lineThrough : null,
            ),
          ),
          Checkbox(
            value: isCompleted,
            onChanged: onChanged,
            shape: const CircleBorder(), // Makes checkbox circular
            side: const BorderSide(color: Colors.blue), // Border when unchecked
          ),
        ],
      ),
    );
  }
}
