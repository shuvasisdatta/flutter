import 'package:state_management/src/models/post/post.dart';

class PostGetRequestAction {
  PostGetRequestAction() {
    print('action');
  }
}

class PostGetSuccessAction {
  final List<Post> posts;
  PostGetSuccessAction({this.posts}) {
    print('success');
    print(this.posts.first.title);
  }
}

class PostGetFailedAction {
  final String err;
  PostGetFailedAction({this.err}) {
    print(this.err);
  }
}
