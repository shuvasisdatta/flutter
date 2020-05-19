import 'package:redux/redux.dart';
import 'package:state_management/src/models/post/post.dart';
import 'package:state_management/src/models/post/post_state.dart';
import 'package:state_management/src/redux/actions/post_actions.dart';
import 'package:state_management/src/redux/app_state.dart';

Reducer<PostState> postReducer = combineReducers([
  TypedReducer<PostState, PostGetRequestAction>(_getRequest),
  TypedReducer<PostState, PostGetSuccessAction>(_getSuccess),
  TypedReducer<PostState, PostGetFailedAction>(_getFailed),
]);

PostState _getRequest(PostState state, PostGetRequestAction action) {
  return state.copyWith(
    isLoading: true,
    err: null,
  );
}

PostState _getSuccess(PostState state, PostGetSuccessAction action) {
  return state.copyWith(
    isLoading: false,
    posts: action.posts,
    err: null,
  );
}

PostState _getFailed(PostState state, PostGetFailedAction action) {
  return state.copyWith(
    isLoading: false,
    err: action.err,
  );
}

// PostState postReducer(PostState state, dynamic action) {
//   switch (action) {
//     case PostGetRequestAction:
//       print('request reducer');
//       // return state.posts;
//       return state.copyWith(isLoading: true);
//     case PostGetSuccessAction:
//       print('success reducer');
//       // return action.posts;
//       return state.copyWith(isLoading: false, posts: action.posts);
//     case PostGetFailedAction:
//       print('failed reducer');
//       // return state.posts;
//       return state.copyWith(isLoading: false, err: action.err);
//     default:
//       print('default reducer');
//       return state.posts;
//   }
// }
