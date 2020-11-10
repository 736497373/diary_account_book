import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';

class LoginHomeTipWidget extends StatelessWidget {
  const LoginHomeTipWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '欢迎使用氢记账',
          style: TextStyle(fontSize: 32, color: ColorsUtil.hexColor(0x3C4546)),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            '暂时只有手机号密码登陆',
            style:
                TextStyle(fontSize: 14, color: ColorsUtil.hexColor(0x8A8F90)),
          ),
        )
      ],
    );
  }
}
