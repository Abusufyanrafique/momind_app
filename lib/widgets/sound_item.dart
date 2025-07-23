import 'package:flutter/material.dart';

class SoundItem extends StatelessWidget {
  final String label;
  final double? height;
  final double? widht;
  final String imagePath;
  final bool isLocked; // <-- Add this

  const SoundItem({
    super.key,
    required this.label,
    required this.height,
    required this.widht,
    required this.imagePath,
    this.isLocked = false, // default to unlocked
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 139,
      width: widht ?? 103,
      child: Stack(
        children: [
          // Main white container
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5EFFF),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Center(
                    child: Text(
                      label,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF464749),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // 🔒 Lock icon in top-left
          if (isLocked)
            const Positioned(
              top: 8,
              left: 8,
              child: Icon(
                Icons.lock,
                size: 16,
                color: Colors.black,
              ),
            ),
        ],
      ),
    );
  }
}
