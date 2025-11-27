part of 'note_cubit.dart';

sealed class NotesState {}
class NotesInitial extends NotesState {}


class NotesLoaded extends NotesState {
  final List notes;
  NotesLoaded(this.notes);
}


class NotesError extends NotesState {
  final String message;
  NotesError(this.message);
}