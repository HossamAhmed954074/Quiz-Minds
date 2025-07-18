// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:quiz_minds/core/router/app_router.dart';
// import 'package:quiz_minds/core/widgets/show_circle_indecator.dart';

// import 'package:quiz_minds/features/home/data/category_model.dart';
// import 'package:quiz_minds/features/quiz/data/question_model.dart';
// import 'package:quiz_minds/features/quiz/presentation/view_model/cubit/quistions_cubit.dart';

// class QuizScreen extends StatefulWidget {
//   const QuizScreen({super.key});

//   @override
//   State<QuizScreen> createState() => _QuizScreenState();
// }

// class _QuizScreenState extends State<QuizScreen> {
//   CategoryModel? categoryModel;
//   int score = 0;
//   int correctAnswers = 0;
//   int wrongAnswers = 0;
//   bool isSubmitting = false;
//   int currentIndex = 0;
//   int totalQuestions = 0;
//   bool isEndQuiz = false;
//   Set<Question> questions = {};
//   // Example total questions, adjust as needed

//   @override
//   void initState() {
//     super.initState();

//     categoryModel = GoRouter.of(context).state.extra as CategoryModel;
//     BlocProvider.of<QuistionsCubit>(
//       context,
//     ).getQuistions(id: categoryModel!.categoryName ?? '');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<QuistionsCubit, QuistionsState>(
//       listener: (context, state) {
//         if (state is QuistionsLoaded) {
//           for (int i = 0; i < 10; i++) {
//             log('Question ${i + 1}: ${state.quistions[i].questionText}');
//             questions.add(state.quistions[i]);
//           }
//           setState(() {
//             totalQuestions = questions.length;
//           });
//         }
//       },
//       builder: (context, state) {
//         if (state is QuistionsLoading) {
//           return Scaffold(body: Center(child: circleIndeactorCustom(context)));
//         }
//         return Scaffold(
//           body: SafeArea(
//             child: Column(
//               children: [
//                 // Header for Quiz Screen
//                 QuizScreenHeaderCustom(
//                   title: categoryModel?.categoryName ?? '',
//                 ),

//                 // loading indicator or content
//                 LoadingIndecatorCustomWidget(
//                   currentIndex: currentIndex + 1,
//                   totalQuestions: totalQuestions,
//                 ),

//                 const SizedBox(height: 20),
//                 // quiz content
//                 Expanded(
//                   child: QuitionContentCustomWidjet(
//                     isNewquistion: isSubmitting,
//                     question: questions.elementAt(currentIndex),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 isEndQuiz
//                     ? ElevatedButton(
//                         onPressed: () {
//                           BlocProvider.of<QuistionsCubit>(context)
//                               .updateUserScore(score);
//                         },
//                         child: Text('End Quiz', style: TextStyle(fontSize: 18)),
//                       )
//                     : ElevatedButton(
//                         onPressed: () {
//                           setState(() {
//                             isSubmitting = true;

//                             if (currentIndex >= totalQuestions - 1) {
//                               isEndQuiz = true;
//                             }
//                           });
//                           // Handle next question logic
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.blueAccent,
//                           padding: EdgeInsets.symmetric(
//                             horizontal: 20,
//                             vertical: 10,
//                           ),
//                         ),
//                         child: Text(
//                           'Submit Answer',
//                           style: TextStyle(fontSize: 18, color: Colors.white),
//                         ),
//                       ),
//                 SizedBox(height: 40),
//               ],
//             ),
//           ),
//           floatingActionButton:
//               isSubmitting && !isEndQuiz && currentIndex < totalQuestions
//               ? FloatingActionButton(
//                   onPressed: () {
//                     setState(() {
//                       isSubmitting = !isSubmitting;
//                       currentIndex++;
//                       if (currentIndex >= totalQuestions) {
//                         isEndQuiz = true;
//                       }
//                     });
//                   },
//                   backgroundColor: Colors.green.shade100,
//                   child: Icon(Icons.skip_next_outlined),
//                 )
//               : SizedBox.shrink(),
//         );
//       },
//     );
//   }
// }

// class QuitionContentCustomWidjet extends StatefulWidget {
//   const QuitionContentCustomWidjet({
//     super.key,
//     required this.question,
//     required this.isNewquistion,
//   });

//   final Question question;
//   final bool isNewquistion;

//   @override
//   State<QuitionContentCustomWidjet> createState() =>
//       _QuitionContentCustomWidjetState();
// }

// class _QuitionContentCustomWidjetState
//     extends State<QuitionContentCustomWidjet> {
//   bool isOption1Clicked = false;
//   bool isOption2Clicked = false;
//   bool isOption3Clicked = false;
//   bool isOption4Clicked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Column(
//         children: [
//           Text(
//             widget.question.questionText,
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(height: 30),
//           Expanded(
//             child: ListView(
//               children: [
//                 OptionButounCustomWidget(
//                   optionText: widget.question.options.options[1] ?? '',
//                   onTap: () {
//                     setState(() {
//                       if (isOption2Clicked ||
//                           isOption3Clicked ||
//                           isOption4Clicked) {
//                         isOption2Clicked = false;
//                         isOption3Clicked = false;
//                         isOption4Clicked = false;
//                       }
//                       isOption1Clicked = !isOption1Clicked;
//                       setState(() {
//                         if (widget.isNewquistion) {
//                           isOption1Clicked = false;
//                         }
//                       });
//                     });
//                   },
//                   isClicked: isOption1Clicked,
//                 ),
//                 OptionButounCustomWidget(
//                   optionText: widget.question.options.options[2] ?? '',
//                   onTap: () {
//                     setState(() {
//                       if (isOption1Clicked ||
//                           isOption3Clicked ||
//                           isOption4Clicked) {
//                         isOption1Clicked = false;
//                         isOption3Clicked = false;
//                         isOption4Clicked = false;
//                       }
//                       isOption2Clicked = !isOption2Clicked;
//                       if (widget.isNewquistion) {
//                         isOption2Clicked = false;
//                       }
//                     });
//                   },
//                   isClicked: isOption2Clicked,
//                 ),
//                 OptionButounCustomWidget(
//                   optionText: widget.question.options.options[3] ?? '',
//                   onTap: () {
//                     setState(() {
//                       if (isOption1Clicked ||
//                           isOption2Clicked ||
//                           isOption4Clicked) {
//                         isOption1Clicked = false;
//                         isOption2Clicked = false;
//                         isOption4Clicked = false;
//                       }
//                       isOption3Clicked = !isOption3Clicked;
//                       if (widget.isNewquistion) {
//                         isOption3Clicked = false;
//                       }
//                     });
//                   },
//                   isClicked: isOption3Clicked,
//                 ),
//                 OptionButounCustomWidget(
//                   optionText: widget.question.options.options[4] ?? '',
//                   onTap: () {
//                     setState(() {
//                       if (isOption1Clicked ||
//                           isOption2Clicked ||
//                           isOption3Clicked) {
//                         isOption1Clicked = false;
//                         isOption2Clicked = false;
//                         isOption3Clicked = false;
//                       }
//                       isOption4Clicked = !isOption4Clicked;
//                       if (widget.isNewquistion) {
//                         isOption4Clicked = false;
//                       }
//                     });
//                   },
//                   isClicked: isOption4Clicked,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class OptionButounCustomWidget extends StatelessWidget {
//   const OptionButounCustomWidget({
//     super.key,
//     required this.onTap,
//     required this.isClicked,
//     required this.optionText,
//   });
//   final bool isClicked;
//   final VoidCallback onTap;
//   final String optionText;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//       padding: EdgeInsets.all(0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: Colors.blueAccent, width: 2),
//         color: isClicked ? Colors.blueAccent.shade100 : Colors.white,
//       ),
//       child: ListTile(
//         title: Text(
//           optionText,
//           style: TextStyle(fontSize: 18, color: Colors.black87),
//           textAlign: TextAlign.center,
//         ),
//         onTap: onTap,
//       ),
//     );
//   }
// }

// class LoadingIndecatorCustomWidget extends StatefulWidget {
//   const LoadingIndecatorCustomWidget({
//     super.key,
//     required this.currentIndex,
//     required this.totalQuestions,
//   });

//   final int currentIndex;
//   final int totalQuestions;

//   @override
//   State<LoadingIndecatorCustomWidget> createState() =>
//       _LoadingIndecatorCustomWidgetState();
// }

// class _LoadingIndecatorCustomWidgetState
//     extends State<LoadingIndecatorCustomWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
//       child: LinearProgressIndicator(
//         value: widget.currentIndex / widget.totalQuestions,
//         valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
//         backgroundColor: Colors.grey.shade300,
//         minHeight: 5,
//       ),
//     );
//   }
// }

// class QuizScreenHeaderCustom extends StatelessWidget {
//   const QuizScreenHeaderCustom({super.key, required this.title});
//   final String title;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(4),
//       decoration: BoxDecoration(
//         color: Colors.blueAccent[100],
//         borderRadius: BorderRadius.circular(20),
//       ),
//       margin: EdgeInsets.all(10),
//       child: Row(
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               GoRouter.of(context).pushReplacement(AppRouter.kNavigationBar);
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.transparent,
//               elevation: 0,
//               shape: CircleBorder(),
//               padding: EdgeInsets.all(10),
//             ),
//             child: Text('Exit', style: TextStyle(color: Colors.redAccent)),
//           ),
//           Expanded(
//             child: Text(
//               title,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Refactored by your Flutter sidekick 💙🔥
