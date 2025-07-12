import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInExceptionHandler {


  static String handleException(GoogleSignInException e) {


    // Handling different GoogleSignIn exceptions.
    switch (e.code) {
      case GoogleSignInExceptionCode.canceled:
        return 'Sign in canceled';
      case GoogleSignInExceptionCode.interrupted:
        return 'Sign in interrupted';
      case GoogleSignInExceptionCode.clientConfigurationError:
        return 'Client configuration error: ${e.description}';
      case GoogleSignInExceptionCode.providerConfigurationError:
        return 'Provider configuration error: ${e.description}';
      case GoogleSignInExceptionCode.uiUnavailable:
        return 'UI unavailable: ${e.description}';
      case GoogleSignInExceptionCode.userMismatch:
        return 'User mismatch: ${e.description}';
      case GoogleSignInExceptionCode.unknownError:
        return 'Unknown error: ${e.description}';
     
    }
  }
}

