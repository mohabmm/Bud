// actions/auth_actions.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
// gives us access to `@required`

class LogIn {}

class LogInSuccessful {
  final FirebaseUser user;

  LogInSuccessful({@required this.user});

  @override
  String toString() {
    return 'LogIn{user: $user}';
  }
}

class LogInFail {
  final dynamic error;
  LogInFail(this.error);
  @override
  String toString() {
    return 'LogIn{There was an error loggin in: $error}';
  }
}

class LogOut {}

class LogOutSuccessful {
  @override
  String toString() {
    print('LogOut{user: null}');
  }

//  googleSignIn.signOut();

}
