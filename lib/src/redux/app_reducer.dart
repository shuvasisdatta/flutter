import 'app_state.dart';
import 'reducers/post_reducers.dart';

AppState appReducer(AppState state, dynamic action) {
  return new AppState(
    // posts: postReducer(state, action),
    postState: postReducer(state.postState, action),
  );
}
