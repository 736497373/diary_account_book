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

  // 切换标题
  List _appBarList = [
    AppBar(title: Text('首页')),
    AppBar(title: Text('统计')),
    AppBar(title: Text('添加')),
    AppBar(title: Text('流水')),
    AppBar(title: Text('个人'))
  ];

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
    return MaterialApp(
        home: Scaffold(
            appBar: _appBarList[_tabIndex],
            body: _pageList[_tabIndex],
            bottomNavigationBar: myBottomBar(context)));
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
