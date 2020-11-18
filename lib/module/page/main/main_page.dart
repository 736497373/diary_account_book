import 'dart:math';

import 'package:diary_account_book/module/utils/routerNavUtils/router_nav_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../home/home_page.dart';
import '../personal/personal_home_page.dart';
import '../record/record_home_page.dart';
import '../statistical/statistical_home_page.dart';
import '../tally/tally_home_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 当前选中下表
  int _tabIndex = 0;

  // 切换页面
  List _pageList = [
    new HomePage(),
    new StatisticalHomePage(),
    null,
    new RecordHomePage(),
    new PersonalHomePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageList[_tabIndex], bottomNavigationBar: myBottomBar(context));
  }

  Widget myBottomBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _tabIndex,
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      items: [
        BottomNavigationBarItem(
          // ignore: deprecated_member_use
          title: Container(),
          icon: iconWidget('assets/tabbar_icon_账本.png'),
        ),
        BottomNavigationBarItem(
          // ignore: deprecated_member_use
          title: Container(),
          icon: iconWidget('assets/tabbar_icon_统计.png'),
        ),
        BottomNavigationBarItem(
          // ignore: deprecated_member_use
          title: Container(),
          icon: addIconWidget('assets/tabbar_icon_添加.png'),
        ),
        BottomNavigationBarItem(
          // ignore: deprecated_member_use
          title: Container(),
          icon: iconWidget('assets/tabbar_icon_分析.png'),
        ),
        BottomNavigationBarItem(
          // ignore: deprecated_member_use
          title: Container(),
          icon: iconWidget('assets/tabbar_icon_我的.png'),
        ),
      ],
      onTap: (index) {
        setState(() {
          if (index == 2) {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              builder: (context) {
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    return false;
                  },
                  child: Container(
                    height: ScreenUtil().setHeight(709),
                    width: double.infinity,
                    child: TallyHomePage(),
                  ),
                );
              },
            );
          } else {
            _tabIndex = index;
          }
        });
      },
    );
  }

  Widget addIconWidget(String name) {
    return Container(
      width: 57,
      height: 40,
      child: Image.asset(name),
    );
  }

  Widget iconWidget(String name) {
    return Container(
      width: 24,
      height: 30,
      child: Image.asset(name),
    );
  }
}
