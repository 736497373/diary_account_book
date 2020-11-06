import 'package:diary_account_book/module/utils/colorUtils/ColorsUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginHomeOtherMethodsWidget extends StatefulWidget {
  LoginHomeOtherMethodsWidget({Key key}) : super(key: key);

  @override
  _LoginHomeOtherMethodsWidgetState createState() =>
      _LoginHomeOtherMethodsWidgetState();
}

class _LoginHomeOtherMethodsWidgetState
    extends State<LoginHomeOtherMethodsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.screenWidth,
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: ColorsUtil.hexColor(0x8A8F90),
                  height: 0.5,
                  width: ScreenUtil().setWidth(104),
                ),
                Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      '其它登陆方式',
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorsUtil.hexColor(0x8A8F90),
                      ),
                    )),
                Container(
                  color: ColorsUtil.hexColor(0x8A8F90),
                  height: 0.5,
                  width: ScreenUtil().setWidth(104),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
