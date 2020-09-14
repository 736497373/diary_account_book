import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text('首页'),
          ),
          FlatButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Text('打开侧边栏'))
        ],
      ),
    );
  }
}
