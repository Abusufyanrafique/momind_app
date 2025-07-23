import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String ?hint;
  final double widht;
  final double height;
  final IconData? icon;
  final Widget? prefixIcon;
  final Color iconcolor;
  final TextInputType keyboardType;
  final bool isObscure;
  final Function(String?)? onChanged;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.isObscure = false,
    this.onChanged,
    required this.widht,
    required this.height,
    this.icon,
    this.iconcolor = Colors.black,  this.prefixIcon,  // default but customizable
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: widht,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFE7EFFD),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: isObscure,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: icon != null ? Icon(icon, color: iconcolor) : null,
          labelText: label,
          hintText: hint,
           border: InputBorder.none,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          // ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your $label';
          }
          return null;
        },
      ),
    );
  }
}
