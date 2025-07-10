import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:async';
import 'package:quiz_minds/core/secrets/secret.dart';

class AuthServicess {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn.instance;
  String webClientId = Secret.webClientId;

  User? get currentUser => auth.currentUser;

  UserInfo get userInfo {
    if (auth.currentUser != null) {
      return auth.currentUser!.providerData[0];
    }

    return UserInfo.fromJson({
      "providerId": '',
      "uid": "anonymous",
      "displayName": "Anonymous User",
      "email": 'null',
      "photoURL": null,
      "phoneNumber": '',
      "isAnonymous": true,
      "tenantId": '',
      "metadata": {"creationTime": '', "lastSignInTime": ''},
      "providerData": [],
      "refreshToken": '',
      "emailVerified": false,
      "stsTokenManager": {
        "accessToken": '',
        "expirationTime": '',
        "refreshToken": '',
      },
      "idToken": '',
      "apiKey": '',
      "appName": '',
      "isEmailVerified": false,
      "phoneNumberVerified": false,
      "isAnonymousUser": true,
    });
  }

  Stream<User?> get authStateChanges =>
      FirebaseAuth.instance.authStateChanges();

  Future<UserCredential> registerUser({
    required String email,
    required String password,
  }) async {
    return await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> loginUser({
    required String email,
    required String password,
  }) async {
    return await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await auth.signOut();
  }

  Future<void> resetPassword(String email) async {
    await auth.sendPasswordResetEmail(email: email);
  }

  Future<void> deleteAccount({
    required String email,
    required String password,
  }) async {
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: password,
    );
    await currentUser!.reauthenticateWithCredential(credential);
    await currentUser!.delete();
    await signOut();
  }

  Future<void> updateUserName({required String name}) async {
    await currentUser!.updateDisplayName(name);
  }

  Future<void> resetPasswordFromCurrentPassword({
    required String email,
    required String currentPassword,
    required String newPassword,
  }) async {
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: currentPassword,
    );
    await currentUser!.reauthenticateWithCredential(credential);
    await currentUser!.updatePassword(newPassword);
  }

  // final FirebaseAuth auth = FirebaseAuth.instance;
  //   final googleSignIn = GoogleSignIn.instance;
  //   String webClientId = Secret.webClientId;
  Future<void> signInWithGoogle() async {
    await googleSignIn.initialize(clientId: webClientId);
    final GoogleSignInAccount googleUser = await googleSignIn.authenticate();
    final GoogleSignInAuthentication googleAuth = googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
    );
    await auth.signInWithCredential(credential);
  }

  signOutWithGoogle() async {
    await googleSignIn.signOut();
  }
}
