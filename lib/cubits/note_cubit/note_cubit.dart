import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  List<NoteModel> ?note ;
  featchAllNote() async {
    var notes = Hive.box<NoteModel>(kNotesBox);
    note= notes.values.toList();
  }
}
