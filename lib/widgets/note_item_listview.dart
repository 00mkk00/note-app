import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_notes_item.dart';

class NoteItemListView extends StatelessWidget {
  const NoteItemListView({super.key});
  final List<Color> data = const [
    Color(0xffFFCE7B),
    Color(0xffE7E896),
    Color(0xff76D6EE),
    Color(0xffD99CE3)
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: CustomNoteItem(
                  color: data[index],
                ),
              );
            },
            itemCount: notes.length,
          ),
        );
      },
    );
  }
}
