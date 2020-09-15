import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/home_current_budget.dart';
import 'widget/home_list.dart';
import 'widget/home_current_overview.dart';

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
          Container(
            margin: EdgeInsets.only(top: ScreenUtil.statusBarHeight),
            child: HomeCurrentOverViewWidget(),
          ),
          Container(
            child: HomeCurrentBudget(),
          ),
          Container(
            child: HomeList(),
          )
        ],
      ),
    );
  }
}
