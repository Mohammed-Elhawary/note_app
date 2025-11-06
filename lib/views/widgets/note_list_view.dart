import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_card.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) => NoteCard()),
    );
  }
}
