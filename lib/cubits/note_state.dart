part of 'note_cubit.dart';

sealed class AddNotesState {}
class AddNotesInitial extends AddNotesState {}


class AddNotesLoading extends AddNotesState {
  AddNotesLoading();
}
class AddNotesSuccess extends AddNotesState {}

class AddNotesError extends AddNotesState {
  final String errMessage;
  AddNotesError(this.errMessage);
}