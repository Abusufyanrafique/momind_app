import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';

class StreamScreen extends StatelessWidget {
  const StreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // 🔹 Full background image
          Positioned.fill(
            child: GestureDetector(
              onTap: () {
                Get.toNamed('waterFallScreen');
              },
              child: Image.asset(
                'assets/images/stream.png',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 🔹 Blurred Bottom Overlay
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C4A75).withOpacity(0.4), // semi-transparent bluish
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AppText(AppStrings.stream, size: 32, fontFamily: "Roboto", fontWeight: null),
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
