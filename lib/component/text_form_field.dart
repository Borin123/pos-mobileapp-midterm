import 'package:flutter/material.dart';
import '../style.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Color? color; // <-- new color property

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.label,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
    this.validator,
    this.color, // <-- accept color
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      style: AppTextStyles.body,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: color ?? Colors.white, // <-- use passed color or fallback
        labelStyle: AppTextStyles.body.copyWith(color: const Color.fromARGB(137, 255, 254, 254)),
        contentPadding: const EdgeInsets.symmetric(
          vertical: AppSpacing.medium,
          horizontal: AppSpacing.medium,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: const Color.fromARGB(136, 0, 34, 255)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: const Color.fromARGB(136, 0, 0, 0).withOpacity(0.5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primary, width: 2),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
