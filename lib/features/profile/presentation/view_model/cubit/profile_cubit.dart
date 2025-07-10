import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_minds/core/services/auth_services.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.auth) : super(ProfileInitial());


 final AuthServicess auth;

 logOut() async {
  await auth.signOut();
 }

}
