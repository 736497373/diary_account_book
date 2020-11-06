import 'package:diary_account_book/module/utils/colorUtils/ColorsUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginHomePhoneInputWidget extends StatefulWidget {
  LoginHomePhoneInputWidget({Key key}) : super(key: key);

  @override
  _LoginHomePhoneInputWidgetState createState() =>
      _LoginHomePhoneInputWidgetState();
}

class _LoginHomePhoneInputWidgetState extends State<LoginHomePhoneInputWidget> {
  TextEditingController textEditingController = new TextEditingController();
  final wdith = ScreenUtil().setWidth(335);
  final marginLeft = ScreenUtil().setWidth(375 - 335) * 0.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: marginLeft),
      child: Column(
        children: [
          Container(
              width: wdith,
              height: 45,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    width: wdith - 24,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: '请输入手机号',
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: new TextStyle(
                              color: ColorsUtil.hexColor(0x999999),
                              fontSize: 15)),
                      controller: textEditingController,
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                  Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          color: ColorsUtil.hexColor(0x5DC78D),
                          borderRadius: BorderRadius.circular(4)))
                ],
              )),
          Container(
              margin: EdgeInsets.only(top: 7),
              width: wdith,
              height: 45,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    width: wdith - 24,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: '请输入密码',
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: new TextStyle(
                              color: ColorsUtil.hexColor(0x999999),
                              fontSize: 15)),
                      controller: textEditingController,
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                  Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          color: ColorsUtil.hexColor(0x5DC78D),
                          borderRadius: BorderRadius.circular(4)))
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 14),
            width: wdith,
            height: 45,
            child: RaisedButton(
              onPressed: () {},
              color: ColorsUtil.hexColor(0x3247D3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                  side: BorderSide(
                      color: ColorsUtil.hexColor(0x3247D3), width: 1)),
              child: Text(
                "登录",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
