import 'package:redux/redux.dart';
import 'package:state_management/src/redux/actions/post_actions.dart';

import '../api.dart';
import 'app_state.dart';

List<Middleware<AppState>> getMiddlewares(Api client) {
  return [
    TypedMiddleware<AppState, PostGetRequestAction>(
        _postGetRequestAction(client))
  ];
}

Middleware<AppState> _postGetRequestAction(Api client) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is PostGetRequestAction) {
      print('middleware 2');
      await client
          .getPost()
          .then((value) => store.dispatch(PostGetSuccessAction(posts: value)))
          .catchError((err) => store.dispatch(PostGetFailedAction(err: err)));
    }
  };
}
