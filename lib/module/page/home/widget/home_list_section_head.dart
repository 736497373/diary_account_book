import 'package:flutter/material.dart';

class HomeListSectionHead extends StatelessWidget {
  const HomeListSectionHead({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      margin: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
      height: 5,
    );
  }
}
