import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/color_listview.dart';

class EditColorLsitView extends StatefulWidget {
  const EditColorLsitView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorLsitView> createState() => _EditColorLsitViewState();
}

class _EditColorLsitViewState extends State<EditColorLsitView> {
  late int currentindex;
  @override
  void initState() {
    currentindex = kColorList.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                widget.note.color = kColorList[index].value;

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
