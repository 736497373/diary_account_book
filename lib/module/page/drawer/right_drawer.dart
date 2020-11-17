import 'package:diary_account_book/module/services/EventBusUtils.dart';
import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'widget/right_drawer_item.dart';

class RightDrawerPage extends StatefulWidget {
  RightDrawerPage({Key key}) : super(key: key);

  @override
  _RightDrawerPageState createState() => _RightDrawerPageState();
}

class _RightDrawerPageState extends State<RightDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          //使用绝对定位可全局渐变（可不用）
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    //渐变位置
                    begin: Alignment.topRight, //右上
                    end: Alignment.bottomLeft, //左下
                    stops: [
                  0.0,
                  1.0,
                  1.0,
                ], //[渐变起始点, 渐变结束点]
                    //渐变颜色[始点颜色, 结束颜色]
                    colors: [
                  ColorsUtil.hexColor(0xF5F6F8),
                  ColorsUtil.hexColor(0xD9D9E6),
                  ColorsUtil.hexColor(0xE9E9F2),
                ])),
          ),
        ),
        Container(
          child: Container(
            child: Row(
              children: [
                Container(
                    height: ScreenUtil.screenHeight,
                    width: ScreenUtil.screenWidth * 0.5,
                    child: GestureDetector(
                      onTap: () => eventBus.fire(RootPageEvent()),
                    )),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  width: ScreenUtil.screenWidth * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RightDrawerItem(
                        title: '生活账本',
                        content: '共888条账目',
                        selected: true,
                        onPressed: () {
                          eventBus.fire(RootPageEvent());
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: RightDrawerItem(
                          title: '旅行账本',
                          content: '共888条账目',
                          onPressed: () {
                            eventBus.fire(RootPageEvent());
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: RightDrawerItem(
                          title: '商业账本',
                          content: '共888条账目',
                          onPressed: () {
                            eventBus.fire(RootPageEvent());
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
