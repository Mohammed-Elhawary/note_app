import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/note_model.dart';
part 'note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNotesInitial());

  Color? color = Colors.red;
  void addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>('notes_box');
      await notesBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
