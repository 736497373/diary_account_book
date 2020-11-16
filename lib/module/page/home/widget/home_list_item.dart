import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';

class HomeListItem extends StatelessWidget {
  const HomeListItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
      height: 47,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 46,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 18),
                      width: 19,
                      height: 24,
                      child: Image.asset('assets/奶茶.png'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 18),
                      child: Text(
                        '奶茶',
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorsUtil.hexColor(0x3C4546),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 18),
                  child: Text(
                    '36.00',
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorsUtil.hexColor(0x4EA28D),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: ColorsUtil.hexColor(0xF5F5F5),
            height: 1,
            margin: EdgeInsets.only(left: 55, right: 15),
          )
        ],
      ),
    );
  }
}
