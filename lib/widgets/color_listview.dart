import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 33,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 30,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 30,
          );
  }
}

class ColorItemListView extends StatefulWidget {
  const ColorItemListView({super.key});

  @override
  State<ColorItemListView> createState() => _ColorItemListViewState();
}

class _ColorItemListViewState extends State<ColorItemListView> {
  int currentindex = 0;

  List<Color> colorList = const [
    Color(0xff540d6e),
    Color(0xffffd23f),
    Color(0xffee4266),
    Color(0xff3bceac),
    Color(0xff0ead69),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 33 * 2,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentindex = index;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: ColorItem(
                  isActive: currentindex == index,
                  color: colorList[index],
                ),
              ),
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: colorList.length,
        ),
      ),
    );
  }
}
