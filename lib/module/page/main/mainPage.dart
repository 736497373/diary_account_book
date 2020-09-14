import 'package:diary_account_book/module/page/drawer/rightDrawer.dart';
import 'package:flutter/material.dart';
import '../home/home.dart';
import '../personal/personal.dart';
import '../record/record.dart';
import '../statistical/statistical.dart';
import '../tally/tally.dart';

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
    new StatisticalPage(),
    new TallyPage(),
    new RecordPage(),
    new PersonalPage()
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
        BottomNavigationBarItem(title: Container(), icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            title: Container(), icon: Icon(Icons.analytics)),
        BottomNavigationBarItem(
          title: Container(),
          icon: Icon(Icons.add_box),
        ),
        BottomNavigationBarItem(title: Container(), icon: Icon(Icons.list)),
        BottomNavigationBarItem(title: Container(), icon: Icon(Icons.person)),
      ],
      onTap: (index) {
        setState(() {
          _tabIndex = index;
        });
      },
    );
  }
}
