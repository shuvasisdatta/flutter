import 'package:flutter/material.dart';
import 'package:state_management/src/utils/colors.dart';

class Home extends StatefulWidget {
  Home({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: AppColor.secondary,
        title: Text(widget.title),
        actions: <Widget>[
          Icon(
            Icons.search,
          ),
        ],
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pushNamed('/post'),
                child: Text('Posts'),
              ),
              FlatButton(
                onPressed: () => Navigator.of(context).pushNamed('/user'),
                child: Text('Users'),
              ),
            ],
          )),
    );
  }
}
