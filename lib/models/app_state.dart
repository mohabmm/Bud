import 'package:firebase_auth/firebase_auth.dart';

class AppState {
  final int count;
  final bool isLoading;
  final FirebaseUser currentUser; //new
  String signupName;

  AppState({
    this.count = 0,
    this.isLoading = false,
    this.currentUser, //new
    this.signupName,
  });
  // This is a function that allows us to create a new state with updated values.
  // With this method, we never have to directly modify current state. This is ideal.
  // State should be read-only in Redux.
  // When it's read only and we're specifically updating it with pure functions from the reducer,
  // we're eliminating the risk of unintended side affects in the app.

  AppState copyWith({int count, bool isLoading}) {
    return new AppState(
      count: count ?? this.count, isLoading: isLoading ?? this.isLoading,
      currentUser: currentUser ?? this.currentUser, // new
      signupName: signupName ?? this.signupName, // new
    );
  }

  @override
  String toString() {
    return 'AppState{isLoading: $isLoading, count: $count, currentUser: $currentUser,signupName:$signupName}';
  }
}
