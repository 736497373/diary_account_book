import 'package:diary_account_book/module/page/home/widget/home_list_item.dart';

import 'package:diary_account_book/module/page/home/widget/home_record_head.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/home_current_budget.dart';
import 'widget/home_current_overview.dart';
import 'widget/home_list_section_foot.dart';
import 'widget/home_list_section_head.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(top: ScreenUtil.statusBarHeight),
            child: HomeCurrentOverViewWidget(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            child: HomeCurrentBudget(),
          ),
        ),
        buildSectionWidget(),
        buildSectionWidget(),
      ],
    );
  }

  Widget buildSectionWidget() {
    List<Widget> widgets = [];
    Widget content;
    // 加载头部
    widgets.add(HomeRecordHead());
    // 加载头部圆角
    widgets.add(HomeListSectionHead());
    // 加载内容
    widgets.add(HomeListItem());
    widgets.add(HomeListItem());
    widgets.add(HomeListItem());
    // 加载尾部圆角
    widgets.add(HomeListSectionFoot());
    content = new Column(
        children: widgets //重点在这里，因为用编辑器写Column生成的children后面会跟一个<Widget>[]，
        );
    return SliverToBoxAdapter(child: content);
  }
}
