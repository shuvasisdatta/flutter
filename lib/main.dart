import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:state_management/src/api.dart';
import 'package:state_management/src/redux/store.dart';

import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: createStore(Api()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: '/',
      ),
    );
  }
}
