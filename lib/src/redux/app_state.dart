import 'package:flutter/foundation.dart';
// import 'package:state_management/src/models/post/post.dart';
import 'package:state_management/src/models/post/post_state.dart';

enum Status { IDLE, LOADING }

class AppState {
  // final Status status;
  // final List<Post> posts;
  final PostState postState;

  AppState({this.postState});

  factory AppState.initial() {
    return AppState(
      // status: Status.IDLE,
      // posts: [Post(body: 'hello')],
      postState: PostState.initial(),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState && postState == other.postState;

  @override
  int get hashCode => postState.hashCode;

  // AppState copyWth({Status status, List<Post> posts}) =>
  //     AppState(posts: posts ?? this.posts, status: status ?? this.status);
}
