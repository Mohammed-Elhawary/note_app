import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_btn.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();
                BlocProvider.of<NoteCubit>(context).featchAllNote();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Note edited successfully')),
                );
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 24),
            CustomTextField(
              hintText: widget.note.title,
              maxLines: 1,
              onChange: (value) => title = value,
            ),
            SizedBox(height: 24),
            CustomTextField(
              hintText: widget.note.content,
              maxLines: 5,
              onChange: (value) => content = value,
            ),
            SizedBox(height: 48),
            // Add other widgets for editing note here
          ],
        ),
      ),
    );
  }
}
