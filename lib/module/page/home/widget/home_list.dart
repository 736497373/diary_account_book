import 'package:diary_account_book/module/page/home/widget/home_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_list_item.dart';

class HomeList extends StatefulWidget {
  HomeList({Key key}) : super(key: key);

  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: ScreenUtil.screenHeight,
      width: ScreenUtil.screenWidth,
      color: Colors.orange,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return HomeListItem();
        },
        itemCount: 10,
      ),
    ));
  }
}
