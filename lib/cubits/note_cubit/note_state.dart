part of 'note_cubit.dart';

sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteLoading extends NoteState {}

final class NoteSucsses extends NoteState {
  final  List<NoteModel> notes;

  NoteSucsses({required this.notes});
}

final class NoteFailure extends NoteState {
  final String errMsg;

  NoteFailure({required this.errMsg});
}
