import 'package:cloud_firestore/cloud_firestore.dart';

class DataServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  getCategories() async {
    var collectionReference =  firestore.collection('ListOfQuestions');
    var querySnapshot = await collectionReference.get();
    return querySnapshot;
    
  }
}
