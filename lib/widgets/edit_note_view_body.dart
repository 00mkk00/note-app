import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: "Edit note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(hint: "Tite"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: "Content",
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
