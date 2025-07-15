import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DataServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  getCategories() async {
    var collectionReference =  firestore.collection('ListOfQuestions');
    var querySnapshot = await collectionReference.get();
    return querySnapshot;
    
  }


  getCategoriesById(String id) async {
    var collectionReference = firestore.collection('ListOfQuestions');
    var querySnapshot = await collectionReference.doc(id).get();
    log( 'Category Data: ${querySnapshot.data()}');
    return querySnapshot.data();
  }



  updateUserScore(String userId, int score) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return;
    }
    var collectionReference = firestore.collection('Users');
    await collectionReference.doc(user.uid).update({'score': score});
  }
}
