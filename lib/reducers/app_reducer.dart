import 'package:bud/models/app_state.dart';
import 'package:bud/reducers/auth_reducer.dart';
import 'package:bud/reducers/counter_reducer.dart';

//new

AppState appReducer(AppState state, action) {
  return AppState(
      isLoading: false,
      count: counterReducer(state.count, action),
      currentUser: authReducer(state.currentUser, action)); //new
  // signupName:forumReducer(state.signupName, action);
}
