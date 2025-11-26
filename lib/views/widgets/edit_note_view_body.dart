import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_btn.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 24),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 24),
          CustomTextField(hintText: 'Content', maxLines: 5),
          SizedBox(height: 48),
          CustomBtn(),
          // Add other widgets for editing note here
        ],
      ),
    );
  }
}
