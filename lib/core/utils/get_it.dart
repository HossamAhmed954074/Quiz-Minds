import 'package:get_it/get_it.dart';
import 'package:quiz_minds/core/services/auth_services.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<AuthServicess>(AuthServicess());

}