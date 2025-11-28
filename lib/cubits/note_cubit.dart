import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';
part 'note_state.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesInitial());

  // void loadNotes() async {
  //   try {
  //     var box = await Hive.openBox('notesBox');
  //     var notes = box.values.toList();
  //     emit(AddNotesLoaded(notes));
  //   } catch (e) {
  //     emit(AddNotesError(e.toString()));
  //   }
  // }

  void addNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNotesSuccess());
      await notesBox.add(note);
    } catch (e) {
      emit(AddNotesError(e.toString()));
    }
  }
}
