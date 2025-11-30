import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_btn.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddFormNote extends StatefulWidget {
  const AddFormNote({super.key});

  @override
  State<AddFormNote> createState() => _AddFormNoteState();
}

class _AddFormNoteState extends State<AddFormNote> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          SizedBox(height: 24),
          CustomTextField(
            onSaved: (value) {
              content = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(height: 48),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomBtn(
                isLoading: state is AddNotesLoading ? true : false,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var curentDate = DateTime.now();
                    var formatted = DateFormat.yMd().format(curentDate);
                    var noteModel = NoteModel(
                      title: title!,
                      content: content!,
                      date: formatted,
                      color: Colors.amber.toARGB32(),
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
