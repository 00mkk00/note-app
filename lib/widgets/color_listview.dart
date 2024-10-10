import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 30,
    );
  }
}

class ColorItemListView extends StatelessWidget {
  const ColorItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 38 * 2,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const ColorItem();
          },
          scrollDirection: Axis.horizontal,
          itemCount: 10,
        ),
      ),
    );
  }
}
