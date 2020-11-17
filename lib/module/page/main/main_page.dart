import 'package:flutter/material.dart';
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
    new TallyHomePage(),
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
          _tabIndex = index;
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
