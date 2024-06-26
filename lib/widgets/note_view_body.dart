import 'package:flutter/material.dart';

import 'package:note_app/widgets/custom_appbar.dart';

import 'package:note_app/widgets/note_item_listview.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          SizedBox(
            height: 5,
          ),
          Expanded(child: NoteItemListView())
        ],
      ),
    );
  }
}
