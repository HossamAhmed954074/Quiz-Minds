part of 'leader_board_cubit.dart';

@immutable
sealed class LeaderBoardState {}

final class LeaderBoardInitial extends LeaderBoardState {}
final class LeaderBoardLoaded extends LeaderBoardState {
  final List<UserData> leaderBoard;

  LeaderBoardLoaded({required this.leaderBoard});
}
final class LeaderBoardError extends LeaderBoardState {
  final String errorMessage;
  LeaderBoardError({this.errorMessage = 'Something went wrong'});
}
final class LeaderBoardLoading extends LeaderBoardState {}

