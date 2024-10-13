import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

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
  int? currentindex;

  
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
                BlocProvider.of<AddNoteCubit>(context).color = kColorList[index];
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: ColorItem(
                  isActive: currentindex == index,
                  color: kColorList[index],
                ),
              ),
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: kColorList.length,
        ),
      ),
    );
  }
}
