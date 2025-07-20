import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_minds/core/services/leader_services.dart';
import 'package:quiz_minds/core/utils/get_it.dart';
import 'package:quiz_minds/features/rating/presentation/view/widgets/rating_body.dart';
import 'package:quiz_minds/features/rating/presentation/view_model/cubit/leader_board_cubit.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LeaderBoardCubit(getIt<LeaderServices>())..getLeaderBoard(),
      child: RatingBody(),
    );
  }
}





