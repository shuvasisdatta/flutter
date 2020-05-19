// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:redux/redux.dart';
// import 'package:state_management/src/models/post/post.dart';
// import 'package:state_management/src/redux/actions/post_actions.dart';
// import 'package:state_management/src/redux/app_state.dart';
// import 'package:state_management/src/utils/colors.dart';

// class ViewModel {
//   final List<Post> posts;
//   final Status status;

//   ViewModel({this.status = Status.IDLE, this.posts});

//   factory ViewModel.initial(Store<AppState> store) {
//     return ViewModel(posts: store.state.posts);
//   }
// }

// class UserDetails extends StatefulWidget {
//   @override
//   @override
//   _UserDetailsState createState() => _UserDetailsState();
// }

// class _UserDetailsState extends State<UserDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, ViewModel>(
//       converter: (store) => ViewModel(posts: store.state.posts),
//       onInit: (store) => store.dispatch(PostGetRequestAction()),
//       builder: (context, vm) => Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Detail',
//           ),
//         ),
//         body: Container(
//           child: RaisedButton(
//             onPressed: null,
//             child: Text(
//               'Not Found',
//               style: TextStyle(color: AppColor.primary),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
