import 'package:flutter/material.dart';
import 'package:note_app/widgets/costum_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}