import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DataServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  getCategories() async {
    var collectionReference = firestore.collection('ListOfQuestions');
    var querySnapshot = await collectionReference.get();
    return querySnapshot;
  }

  getCategoriesById(String id) async {
    var collectionReference = firestore.collection('ListOfQuestions');
    var querySnapshot = await collectionReference.doc(id).get();

    return querySnapshot;
  }

  updateUserScore(int score) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return;
    }
    var collectionReference = firestore.collection('users');
    int oldScore = await collectionReference
        .doc(user.uid)
        .get()
        .then((value) => value.data()!['score']);
    int newScore = oldScore + score;
    await collectionReference.doc(user.uid).update({'score': newScore});
  }
}
