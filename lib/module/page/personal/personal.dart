import 'package:flutter/material.dart';

import '../../utils/appNavUtils/AppNavUtils.dart';

class PersonalPage extends StatefulWidget {
  PersonalPage({Key key}) : super(key: key);

  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
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
