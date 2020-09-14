import 'package:diary_account_book/module/services/EventBusUtils.dart';
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
                eventBus.fire(RootPageEvent(true));
              },
              child: Text('打开侧边栏'))
        ],
      ),
    );
  }
}
