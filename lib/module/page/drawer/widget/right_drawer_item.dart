import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RightDrawerItem extends StatefulWidget {
  String title;
  String content;
  VoidCallback onPressed;
  bool selected;
  RightDrawerItem(
      {Key key,
      this.title,
      this.content,
      this.onPressed,
      this.selected = false})
      : super(key: key);

  @override
  _RightDrawerItemState createState() => _RightDrawerItemState();
}

class _RightDrawerItemState extends State<RightDrawerItem> {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.selected ? 1 : 0.2,
      alwaysIncludeSemantics: false,
      child: Container(
        height: 60,
        width: 150,
        child: GestureDetector(
          onTap: () {
            widget.onPressed();
          },
          child: Stack(
            children: [
              Positioned.fill(
                //使用绝对定位可全局渐变（可不用）
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      gradient: LinearGradient(
                          //渐变位置
                          begin: Alignment.topRight, //右上
                          end: Alignment.bottomLeft, //左下
                          stops: [
                            0.0,
                            1.0,
                            1.0,
                            0.0
                          ], //[渐变起始点, 渐变结束点]
                          //渐变颜色[始点颜色, 结束颜色]
                          colors: [
                            ColorsUtil.hexColor(0xEEEEEE),
                            ColorsUtil.hexColor(0xDCDCE7),
                            ColorsUtil.hexColor(0xDBDFE7),
                            ColorsUtil.hexColor(0xE8EDF0),
                          ])),
                ),
              ),
              Positioned.fill(
                child: Container(
                  margin: EdgeInsets.only(top: 11),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          widget.title,
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorsUtil.hexColor(0x3C4546),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          widget.content,
                          style: TextStyle(
                            fontSize: 12,
                            color: ColorsUtil.hexColor(0x8A8F90),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
