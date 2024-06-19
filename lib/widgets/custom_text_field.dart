import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine=1});
  final String hint;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: kPrimiryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimiryColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: kPrimiryColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
