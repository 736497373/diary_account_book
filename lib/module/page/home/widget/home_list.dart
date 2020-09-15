import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      child: null,
    ));
  }
}
