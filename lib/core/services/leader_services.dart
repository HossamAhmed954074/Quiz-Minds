


import 'package:cloud_firestore/cloud_firestore.dart';

class LeaderServices {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  getLeaderBoardData() {
    return firebaseFirestore
        .collection('users');
  }

  // Stream<List<Map<String, dynamic>>> getLeaderBoardData() {
  //   return firebaseFirestore
  //       .collection('users')
  //       .orderBy('score', descending: true)
  //       .snapshots()
  //       .map((event) => event.docs.map((e) => e.data()).toList());
  // }
}
