import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
part 'note_state.dart';
class NoteCubit extends Cubit<NotesState> {
  NoteCubit() : super(NotesInitial());

  void loadNotes() async {
    try {
      var box = await Hive.openBox('notesBox');
      var notes = box.values.toList();
      emit(NotesLoaded(notes));
    } catch (e) {
      emit(NotesError(e.toString()));
    }
  }
}