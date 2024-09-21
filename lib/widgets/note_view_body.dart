import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';

import 'package:note_app/widgets/custom_appbar.dart';

import 'package:note_app/widgets/note_item_listview.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  void intState() {
    BlocProvider.of<NotesCubit>(context).showAllNotes();
    setState(() {});
  }

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
            title: "Notes",
            icon: Icons.search,
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(child: NoteItemListView())
        ],
      ),
    );
  }
}
