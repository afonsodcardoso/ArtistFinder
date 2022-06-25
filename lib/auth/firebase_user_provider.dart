import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ArtistFinderFirebaseUser {
  ArtistFinderFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

ArtistFinderFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ArtistFinderFirebaseUser> artistFinderFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ArtistFinderFirebaseUser>(
            (user) => currentUser = ArtistFinderFirebaseUser(user));
