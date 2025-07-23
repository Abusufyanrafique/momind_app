import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String title;
  final String duration;

  ActivityCard({required this.title, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: EdgeInsets.all(16.0),
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(duration, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}