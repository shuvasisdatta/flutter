import 'package:state_management/src/models/post/post.dart';

class PostState {
  final List<Post> posts;
  final bool isLoading;
  final String err;

  PostState({this.posts, this.isLoading = false, this.err});

  factory PostState.initial() => PostState(
        posts: [],
        isLoading: false,
        err: null,
      );

  PostState copyWith({List<Post> posts, bool isLoading, String err}) =>
      PostState(
        posts: posts ?? this.posts,
        isLoading: isLoading ?? this.isLoading,
        err: err ?? this.err,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostState &&
          runtimeType == other.runtimeType &&
          posts == other.posts &&
          isLoading == other.isLoading &&
          err == other.err;

  @override
  int get hashCode => posts.hashCode ^ isLoading.hashCode ^ err.hashCode;
}
