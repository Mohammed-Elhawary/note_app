import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/note_card.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> note = BlocProvider.of<NoteCubit>(context).note ?? [];
        return ListView.builder(
          itemCount: note.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => NoteCard(note: note[index]),
        );
      },
    );
  }
}
