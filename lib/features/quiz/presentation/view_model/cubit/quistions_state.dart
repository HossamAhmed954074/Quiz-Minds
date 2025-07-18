part of 'quistions_cubit.dart';

@immutable
sealed class QuistionsState {}

final class QuistionsInitial extends QuistionsState {}
final class QuistionsLoading extends QuistionsState {}
final class QuistionsLoaded extends QuistionsState {
  final Set<Question> quistions;
  QuistionsLoaded(this.quistions);
}
final class QuistionsError extends QuistionsState {
  final String error;
  QuistionsError(this.error);
}
