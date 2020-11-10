import 'package:flutter/material.dart';

import '../../utils/appNavUtils/app_nav_utils.dart';

class PersonalHomePage extends StatefulWidget {
  PersonalHomePage({Key key}) : super(key: key);

  @override
  _PersonalHomePageState createState() => _PersonalHomePageState();
}

class _PersonalHomePageState extends State<PersonalHomePage> {
  @override
  Widget build(BuildContext context) {
    return AppNavUtil(
      title: '个人中心',
      isBack: false,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.analytics),
          onPressed: () async {
            Scaffold.of(context).openEndDrawer();
          },
        ),
        SizedBox(
          width: 10,
        ),
      ],
      body: Container(
        child: Text('个人中心'),
      ),
    );
  }
}
