import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  featchAllNote() async {
    emit(NoteLoading());
    try {
      var notes = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> listNote = notes.values.toList();
      emit(NoteSucsses(notes: listNote));
    } catch (e) {
      emit(NoteFailure(errMsg: e.toString()));
    }
  }
}
