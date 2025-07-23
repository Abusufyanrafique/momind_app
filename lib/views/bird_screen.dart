import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BirdScreen extends StatelessWidget {
  const BirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // 🔹 First full background image
          Positioned.fill(
            child: GestureDetector(
              onTap: () {
                Get.toNamed('streamScreen');
              },
              child: Image.asset(
                'assets/images/birds_background.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
 
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color(0xFF0C2746),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Birds',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TagChip(label: 'Nature'),
                      SizedBox(width: 8),
                      TagChip(label: 'Focus'),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.circle_outlined, size: 28, color: Colors.white),
                      Icon(Icons.play_circle, size: 60, color: Colors.white),
                      Icon(Icons.timer, size: 28, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Icon(Icons.cancel, color: Colors.white60, size: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TagChip extends StatelessWidget {
  final String label;

  const TagChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}
