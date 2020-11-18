import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TallyHomePage extends StatefulWidget {
  TallyHomePage({Key key}) : super(key: key);

  @override
  _TallyHomePageState createState() => _TallyHomePageState();
}

class _TallyHomePageState extends State<TallyHomePage> {
  @override
  Widget build(BuildContext context) {
    final bgWidgetHeight = MediaQuery.of(context).size.height;
    final headHeight = 200.0;
    return bgWidget(
      bgWidgetHeight,
      bgImage: AssetImage("assets/home_budget_detail_bg_4FA28D.png"),
      child: Stack(
        children: [
          Container(
              height: headHeight,
              child: Column(
                children: [
                  tipWidget(),
                  tallyTypeHeadContainerWidget(),
                  amountWidget(36.00),
                  walletTypeContainerWidget()
                ],
              )),
          actionContainerWidget(headHeight,
              child: Column(
                children: [
                  actionSubRecordTypeWidget(),
                  actionSubTimeContainerWidget(),
                  actionSubRemarkWidget(),
                  actionButtonContainerWidget()
                ],
              ))
        ],
      ),
    );
  }

  Widget bgWidget(double height, {AssetImage bgImage, Widget child}) {
    return Container(
      decoration: ShapeDecoration(
          image: bgImage != null
              ? DecorationImage(image: bgImage, fit: BoxFit.fill)
              : null,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          color: Colors.white),
      width: ScreenUtil.screenWidth,
      height: height,
      child: child,
    );
  }

  Widget tipWidget() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      height: 5,
      width: 37,
      color: ColorsUtil.hexColor(0xffffff, alpha: 0.6),
    );
  }

  Widget tallyTypeHeadContainerWidget() {
    return Container(
      margin: EdgeInsets.only(top: 15, left: ScreenUtil().setWidth(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [tallyTypeWidget(), tallyBookTypeWidget()],
      ),
    );
  }

  Widget tallyTypeWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        tallyTypeItemWidget('支出', seleted: true),
        SizedBox(
          width: 14,
        ),
        tallyTypeItemWidget('收入', seleted: false),
      ],
    );
  }

  Widget tallyTypeItemWidget(String title, {bool seleted = false}) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Text(
            '$title',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: seleted ? 18 : 14,
              color: ColorsUtil.hexColor(0xffffff, alpha: seleted ? 1 : 0.5),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 4),
            height: 2,
            width: 11,
            color: ColorsUtil.hexColor(0xffffff, alpha: seleted ? 1 : 0),
          )
        ],
      ),
    );
  }

  Widget tallyBookTypeWidget() {
    return ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36), bottomLeft: Radius.circular(36)),
        child: FlatButton(
            height: 36,
            color: ColorsUtil.hexColor(0xffffff),
            onPressed: () {},
            child: Text(
              '生活账本',
              style: TextStyle(
                  color: ColorsUtil.hexColor(0x4FA28D),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            )));
  }

  Widget amountWidget(double amount) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(left: 30, top: 5),
      child: Text(
        '$amount',
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget walletTypeContainerWidget() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [walletButtonWidget(), cameraButtonWidget()],
      ),
    );
  }

  Widget walletButtonWidget() {
    return Container(
      margin: EdgeInsets.only(left: 30),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Container(
              width: 17,
              child: Image.asset('assets/tally_账户类型_微信支付.png'),
            ),
            SizedBox(width: 5),
            Text(
              '微信支付',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 10),
            Container(
              width: 5,
              child: Image.asset('assets/tally_账户类型_下拉.png'),
            ),
          ],
        ),
      ),
    );
  }

  Widget cameraButtonWidget() {
    return Container(
      margin: EdgeInsets.only(right: 30),
      child: IconButton(
        color: Colors.white,
        icon: Icon(Icons.photo),
        onPressed: () {},
      ),
    );
  }

  Widget actionContainerWidget(double headHeight, {Widget child}) {
    return Positioned(
      top: headHeight,
      bottom: 0,
      child: Container(
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            color: ColorsUtil.hexColor(0xEEEEEE)),
        width: ScreenUtil.screenWidth,
        child: child,
      ),
    );
  }

  Widget actionSubRecordTypeWidget() {
    return Container(
      margin: EdgeInsets.only(top: 12),
      height: 110,
      width: ScreenUtil().setWidth(351),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          color: ColorsUtil.hexColor(0xFFFFFF)),
    );
  }

  Widget actionSubTimeContainerWidget() {
    return Container(
      margin: EdgeInsets.only(top: 12),
      height: 60,
      width: ScreenUtil().setWidth(351),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          color: ColorsUtil.hexColor(0xEEEEEE)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: ScreenUtil().setWidth(277),
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                color: ColorsUtil.hexColor(0xFFFFFF)),
          ),
          Container(
            width: ScreenUtil().setWidth(62),
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                color: ColorsUtil.hexColor(0xFFFFFF)),
          )
        ],
      ),
    );
  }

  Widget actionSubRemarkWidget() {
    return Container(
      margin: EdgeInsets.only(top: 12),
      height: 60,
      width: ScreenUtil().setWidth(351),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          color: ColorsUtil.hexColor(0xFFFFFF)),
    );
  }

  Widget actionButtonContainerWidget() {
    return Container(
      margin: EdgeInsets.only(top: 12),
      height: 60,
      width: ScreenUtil().setWidth(351),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          color: ColorsUtil.hexColor(0xEEEEEE)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [saveButtonWidget(), againButtonWidget()],
      ),
    );
  }

  Widget saveButtonWidget() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      width: ScreenUtil().setWidth(210),
      height: 45,
      child: RaisedButton(
        onPressed: () {},
        color: ColorsUtil.hexColor(0x4FA28D),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: BorderSide(color: Colors.transparent, width: 1)),
        child: Text(
          "保存",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget againButtonWidget() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      width: ScreenUtil().setWidth(127),
      height: 45,
      child: RaisedButton(
        onPressed: () {},
        color: ColorsUtil.hexColor(0xF5F5F5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: BorderSide(color: ColorsUtil.hexColor(0x4FA28D), width: 2)),
        child: Text(
          "再记一笔",
          style: TextStyle(
              fontSize: 16,
              color: ColorsUtil.hexColor(0x4FA28D),
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
