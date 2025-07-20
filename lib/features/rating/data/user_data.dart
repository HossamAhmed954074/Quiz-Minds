





class UserData {
 
  final String uid;
  final int score;
  final String userName;
  final String email;

  UserData({
    required this.uid,
    required this.score,
    required this.userName,
    required this.email,
  });

 
  factory UserData.fromFirestore( doc) {
    return UserData(
      uid: doc['uid'] ?? '',
      score: doc['score'] ?? 0,
      userName: doc['userName'] ?? '',
      email: doc['email'] ?? '',
    );
  }

}
