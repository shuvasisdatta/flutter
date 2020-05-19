import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:state_management/src/models/post/post.dart';
import 'package:state_management/src/models/post/post_state.dart';
import 'package:state_management/src/redux/actions/post_actions.dart';
import 'package:state_management/src/redux/app_state.dart';
import 'package:state_management/src/utils/colors.dart';

// class ViewModel {
//   PostState postState;
//   Status status;
//   final Function getPost;

//   ViewModel({this.status = Status.IDLE, this.posts, this.getPost});

//   factory ViewModel.create(Store<AppState> store) {
//     return ViewModel(
//       poststate: store.state.posts,
//       getPost: () {
//         store.dispatch(PostGetRequestAction());
//         print('printing:');
//       },
//     );
//   }
// }

class ViewModel {
  final PostState postState;
  ViewModel({@required this.postState}) {
    print('viewModel ${this.postState.posts}');
  }

  static ViewModel create(Store<AppState> store) {
    // store.dispatch(PostGetRequestAction());
    return ViewModel(
      postState: store.state.postState,
    );
  }
}

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ViewModel>(
      // distinct: true,
      converter: (store) => ViewModel.create(store),
      // onInitialBuild: (vm) => vm.getPost(),
      builder: (BuildContext context, ViewModel vm) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Posts',
          ),
        ),
        body: Container(
          child: vm.postState.isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: vm.postState.posts.length,
                  itemBuilder: (context, index) {
                    final Post post = vm.postState.posts[index];
                    return Container(
                      child: Text(
                        '${post.body}',
                        style: TextStyle(color: AppColor.primary),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
