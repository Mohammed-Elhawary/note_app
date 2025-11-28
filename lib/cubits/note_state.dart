part of 'note_cubit.dart';

sealed class AddNoteState {}
class AddNotesInitial extends AddNoteState {}


class AddNotesLoading extends AddNoteState {
  AddNotesLoading();
}
class AddNotesSuccess extends AddNoteState {}

class AddNotesFailure extends AddNoteState {
  final String errMessage;
  AddNotesFailure(this.errMessage);
}