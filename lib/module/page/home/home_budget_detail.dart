import 'package:diary_account_book/module/utils/appNavUtils/app_nav_utils.dart';
import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/home_gauge_chart.dart';

class HomeBudgetDetail extends StatefulWidget {
  HomeBudgetDetail({Key key}) : super(key: key);

  @override
  _HomeBudgetDetailState createState() => _HomeBudgetDetailState();
}

class _HomeBudgetDetailState extends State<HomeBudgetDetail> {
  @override
  Widget build(BuildContext context) {
    return AppNavUtil(
      title: '',
      isBack: false,
      isAppNav: false,
      isCustomNav: false,
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            bgWidget(),
            backWidget(),
            Positioned(
              top: ScreenUtil().setHeight(130),
              left: 30,
              child: titleWidget(),
            ),
            Column(
              children: [
                gaugeChartWidget(),
                budgetWidget(),
              ],
            ),
            Positioned(
              bottom: ScreenUtil().setHeight(50),
              child: budgetChangeButtonWidget(),
            )
          ],
        ),
      ),
    );
  }

  Widget bgWidget() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset('assets/home_budget_detail_bg_4FA28D.png',
          fit: BoxFit.fill),
    );
  }

  Widget backWidget() {
    return Positioned(
        top: 50,
        left: 10,
        child: BackButton(
          color: Colors.white,
          onPressed: () => (Navigator.pop(context)),
        ));
  }

  Widget titleWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '我的预算',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          '2020年2月10日-3月10日',
          style: TextStyle(
            fontSize: 14,
            color: ColorsUtil.hexColor(0xFFFFFF, alpha: 0.5),
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }

  Widget gaugeChartWidget() {
    return Container(
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(280)),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          HomeGaugeChart(size: Size(200, 200)),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Container(
                    child: RichText(
                        text: TextSpan(
                  text: '25',
                  style: TextStyle(
                      fontSize: 54,
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
    );
  }

  Widget budgetWidget() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            budgetItemWidget('总预算', '8500'),
            budgetItemWidget('剩余预算', '2125.30')
          ],
        ));
  }

  Widget budgetItemWidget(String title, String content) {
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

  Widget budgetChangeButtonWidget() {
    final wdith = ScreenUtil().setWidth(335);
    return Container(
      width: wdith,
      height: 45,
      child: RaisedButton(
        onPressed: () {},
        color: ColorsUtil.hexColor(0xFFFFFF, alpha: 1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
            side: BorderSide(color: Colors.transparent, width: 1)),
        child: Text(
          "更改我的预算",
          style: TextStyle(fontSize: 16, color: ColorsUtil.hexColor(0x63A69F)),
        ),
      ),
    );
  }
}
