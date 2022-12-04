import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FitXFirebaseUser {
  FitXFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FitXFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FitXFirebaseUser> fitXFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FitXFirebaseUser>(
      (user) {
        currentUser = FitXFirebaseUser(user);
        return currentUser!;
      },
    );
