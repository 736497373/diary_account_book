import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_gauge_chart.dart';

class HomeCurrentBudgetItem extends StatefulWidget {
  final String assetsUrl;
  HomeCurrentBudgetItem({Key key, this.assetsUrl}) : super(key: key);

  @override
  _HomeCurrentBudgetItemState createState() => _HomeCurrentBudgetItemState();
}

class _HomeCurrentBudgetItemState extends State<HomeCurrentBudgetItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 6),
      child: Container(
        child: Stack(
          children: [
            Container(
              height: ScreenUtil.screenHeight,
              width: ScreenUtil.screenWidth,
              child: Image.asset(
                widget.assetsUrl,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: ScreenUtil.screenHeight,
              width: ScreenUtil.screenWidth,
              child: Row(
                children: [
                  HomeCurrentBudgetLeftWidget(),
                  HomeCurrentBudgetRightWidget()
                ],
              ),
            )
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
          margin: EdgeInsets.only(left: 15, top: 15),
          child: HomeGaugeChart(
            size: Size(110, 110),
          ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              '我的预算',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 6),
              child: Row(
                children: [
                  rightWidgetItem('总预算', '8500'),
                  SizedBox(width: 24),
                  rightWidgetItem('剩余预算', '2125.30')
                ],
              ))
        ],
      ),
    );
  }

  Widget rightWidgetItem(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title',
          style: TextStyle(
              color: ColorsUtil.hexColor(0xffffff, alpha: 0.65),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        Text(
          '$content',
          style: TextStyle(
              color: ColorsUtil.hexColor(0xffffff),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
