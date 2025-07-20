

import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';
import 'package:quiz_minds/core/services/leader_services.dart';
import 'package:quiz_minds/features/rating/data/user_data.dart';

part 'leader_board_state.dart';

class LeaderBoardCubit extends Cubit<LeaderBoardState> {
  LeaderBoardCubit(this.leaderServices) : super(LeaderBoardInitial());

  final LeaderServices leaderServices;

  List<UserData> leaderBoard = [];
  Future<void> getLeaderBoard() async {
    emit(LeaderBoardLoading());
    try {
      final snapshot = await leaderServices.getLeaderBoardData().get();
      if (snapshot.docs.isEmpty) {
        emit(LeaderBoardError(errorMessage: 'No data found'));
        return;
      }
      for (var element in snapshot.docs) {
        leaderBoard.add(UserData.fromFirestore(element.data()));
      }
      leaderBoard.sort((a, b) => b.score.compareTo(a.score));
      emit(LeaderBoardLoaded(leaderBoard: leaderBoard));
    } catch (e) {
      emit(LeaderBoardError(errorMessage: e.toString()));
    }
  }
}
