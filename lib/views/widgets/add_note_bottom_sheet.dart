import 'package:flutter/material.dart';
import 'package:notes_app/constant_color.dart';
import 'package:notes_app/views/widgets/custom_btn.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 24),
            CustomTextField(hintText: 'Content', maxLines: 5),
            SizedBox(height: 48),
            CustomBtn(),
          ],
        ),
      ),
    );
  }
}
