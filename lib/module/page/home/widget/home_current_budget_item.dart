import 'package:diary_account_book/module/router/home_router.dart';
import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:diary_account_book/module/utils/routerNavUtils/router_nav_utils.dart';
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
    return GestureDetector(
      onTap: () {
        RouterNavigatorUtils.push(HomeRouter().homeBudgetDetailPage);
      },
      child: Container(
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
          margin: EdgeInsets.only(left: 7.5, top: 15),
          child: Stack(
            alignment: Alignment.center,
            children: [
              HomeGaugeChart(
                size: Size(110, 110),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Container(
                        child: RichText(
                            text: TextSpan(
                      text: '25',
                      style: TextStyle(
                          fontSize: 24,
                          color: ColorsUtil.hexColor(0xffffff),
                          fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: '%',
                          style: TextStyle(
                              fontSize: 14,
                              color: ColorsUtil.hexColor(0xffffff, alpha: 0.7)),
                        ),
                      ],
                    ))),
                    Container(
                      child: Text(
                        '剩余',
                        style: TextStyle(
                            fontSize: 14,
                            color: ColorsUtil.hexColor(0xffffff, alpha: 0.5)),
                      ),
                    )
                  ],
                ),
              )
            ],
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
            margin: EdgeInsets.only(top: 20, left: 12),
            child: Text(
              '我的预算',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 6, left: 12),
              child: Row(
                children: [
                  rightWidgetItem('总预算', '8500'),
                  SizedBox(width: 12),
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
