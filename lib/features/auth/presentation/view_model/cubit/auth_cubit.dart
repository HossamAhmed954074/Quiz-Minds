import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:quiz_minds/core/errors/firebase_faliure.dart';
import 'package:quiz_minds/core/errors/google_signin_faliure.dart';
import 'package:quiz_minds/core/services/auth_services.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authServices) : super(AuthInitial());
  AuthServicess authServices;
  
  register({required String email, required String password})async{
    emit(AuthLoading());
    try {
        await authServices.registerUser(email: email, password: password);
      emit(AuthSuccess());
    }on FirebaseAuthException catch(e){
      emit(AuthFailure(FirebaseFaliure(e.code)));
    }
  }

  logIn({required String email, required String password})async{
    emit(AuthLoading());
    try {
        await authServices.loginUser(email: email, password: password);
      emit(AuthSuccess());
    }on FirebaseAuthException catch(e){
      emit(AuthFailure(FirebaseFaliure(e.code)));
    }
  }

  resetPassword({required String email})async{
    emit(AuthLoading());
    try {
        await authServices.resetPassword(email);
      emit(AuthSuccess());
    }on FirebaseAuthException catch(e){
      emit(AuthFailure(FirebaseFaliure(e.code)));
    }
  }

  googleAuth()async{
    emit(AuthLoading());
    try {
        await authServices.signInWithGoogle();
      emit(AuthSuccess());
    }on   GoogleSignInException catch(e){
      emit(GoogleAuthFailure(GoogleSignInExceptionHandler.handleException(e)));
    }
  

  }
}
