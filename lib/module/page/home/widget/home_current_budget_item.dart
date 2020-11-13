import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_gauge_chart.dart';

class HomeCurrentBudgetItem extends StatefulWidget {
  final Color color;
  HomeCurrentBudgetItem({Key key, this.color}) : super(key: key);

  @override
  _HomeCurrentBudgetItemState createState() => _HomeCurrentBudgetItemState();
}

class _HomeCurrentBudgetItemState extends State<HomeCurrentBudgetItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 6),
      child: Container(
        color: widget.color,
        child: Row(
          children: [
            HomeCurrentBudgetLeftWidget(),
            HomeCurrentBudgetRightWidget()
          ],
        ),
      ),
    );
  }
}

class HomeCurrentBudgetLeftWidget extends StatefulWidget {
  HomeCurrentBudgetLeftWidget({Key key}) : super(key: key);

  @override
  _HomeCurrentBudgetLeftWidgetState createState() =>
      _HomeCurrentBudgetLeftWidgetState();
}

class _HomeCurrentBudgetLeftWidgetState
    extends State<HomeCurrentBudgetLeftWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil().setWidth(124),
        child: Container(
          child: HomeGaugeChart(),
        ));
  }
}

class HomeCurrentBudgetRightWidget extends StatefulWidget {
  HomeCurrentBudgetRightWidget({Key key}) : super(key: key);

  @override
  _HomeCurrentBudgetRightWidgetState createState() =>
      _HomeCurrentBudgetRightWidgetState();
}

class _HomeCurrentBudgetRightWidgetState
    extends State<HomeCurrentBudgetRightWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              '我的预算',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
