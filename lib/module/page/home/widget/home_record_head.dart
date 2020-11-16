import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';

class HomeRecordHead extends StatefulWidget {
  HomeRecordHead({Key key}) : super(key: key);

  @override
  _HomeRecordHeadState createState() => _HomeRecordHeadState();
}

class _HomeRecordHeadState extends State<HomeRecordHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(
            text: '今天',
            style: TextStyle(
                fontSize: 18,
                color: ColorsUtil.hexColor(0x3C4546),
                fontWeight: FontWeight.w600),
            children: [
              TextSpan(
                text: '     ',
                style: TextStyle(
                    fontSize: 12, color: ColorsUtil.hexColor(0x3247D3)),
              ),
              TextSpan(
                text: '3月2日 周日',
                style: TextStyle(
                    fontSize: 12, color: ColorsUtil.hexColor(0x3247D3)),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      '收 11643.53',
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorsUtil.hexColor(0x8A8F90),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    child: Text(
                      '支 129.8',
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorsUtil.hexColor(0x8A8F90),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
