import 'package:diary_account_book/module/page/home/widget/home_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/home_current_budget.dart';
import 'widget/home_current_overview.dart';

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
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Visibility(
                visible: true,
                child: HomeListItem(),
              );
            },
            childCount: 10,
          ),
        )
      ],
    );
  }
}
