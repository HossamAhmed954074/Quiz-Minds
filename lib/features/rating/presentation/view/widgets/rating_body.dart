import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_minds/core/utils/assets.dart';
import 'package:quiz_minds/core/widgets/show_circle_indecator.dart';
import 'package:quiz_minds/features/rating/data/user_data.dart';
import 'package:quiz_minds/features/rating/presentation/view/widgets/top_rated.dart';
import 'package:quiz_minds/features/rating/presentation/view/widgets/top_rated_after3.dart';
import 'package:quiz_minds/features/rating/presentation/view_model/cubit/leader_board_cubit.dart';

class RatingBody extends StatefulWidget {
  const RatingBody({super.key});

  @override
  State<RatingBody> createState() => _RatingBodyState();
}

class _RatingBodyState extends State<RatingBody> {
  List<UserData> userDataTop3 = [];
  List<UserData> userDataFrom3to10 = [];
  List<String> userAvatar = [
    Assets.avatar_1,
    Assets.avatar_2,
    Assets.avatar_3,
    Assets.avatar_4,
    Assets.avatar_5,
    Assets.avatar_6,
    Assets.avatar_7,
    Assets.avatar_8,
    Assets.avatar_9,
    Assets.avatar_10,
  ];
  @override
  void initState() {
    super.initState();
    userAvatar.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LeaderBoardCubit, LeaderBoardState>(
      listener: (context, state) {
        if (state is LeaderBoardLoaded) {
          userDataTop3 = state.leaderBoard.take(3).toList();
          userDataFrom3to10 = state.leaderBoard.skip(3).toList();
        }
      },
      builder: (context, state) {
        if (state is LeaderBoardLoading) {
          return Center(child: circleIndeactorCustom(context));
        }
        if (state is LeaderBoardError || userDataTop3.isEmpty) {
          return const Center(child: Text('Error loading leaderboard'));
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                'Leaderboard',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    'assets/images/leader-removebg-preview.png',
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    
                    left: 0,
                    right: 0,
                    bottom: 215,
                    child: BuildTopRated(
                      userData: userDataTop3[0],
                      avatarPath: userAvatar[0],
                    ),
                  ),
                  Positioned(
                    left: 25,
                    bottom: 115,
                    child: BuildTopRated(
                      userData: userDataTop3[1],
                      avatarPath: userAvatar[1],
                    ),
                  ),
                  Positioned(
                    right: 25,
                    bottom: 115,
                    child: BuildTopRated(
                      userData: userDataTop3[2],
                      avatarPath: userAvatar[2],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: userDataFrom3to10.length >= 8 ? 8 :userDataFrom3to10.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    if(userDataFrom3to10.isEmpty){
                      return const SizedBox();
                    }
                    return BuildAfter3TopRating(
                      avatarPasth: userAvatar[index + 3],
                      index: index + 4,
                      userData: userDataFrom3to10[index],
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}