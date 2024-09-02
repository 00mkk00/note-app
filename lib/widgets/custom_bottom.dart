import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: kPrimiryColor, borderRadius: BorderRadius.circular(8)),
      child: const Center(
        child: Text(
          "Add",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}