import 'package:carousel_slider/carousel_slider.dart';
import 'package:diary_account_book/module/page/home/widget/home_current_budget_item.dart';
import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';

class HomeCurrentBudget extends StatefulWidget {
  HomeCurrentBudget({Key key}) : super(key: key);

  @override
  _HomeCurrentBudgetState createState() => _HomeCurrentBudgetState();
}

class _HomeCurrentBudgetState extends State<HomeCurrentBudget> {
  int _current = 0;
  List<String> _itemList = [
    'assets/home_current_budget_item_bg_img_4FA28D.png',
    'assets/home_current_budget_item_bg_img_E9B485.png',
    'assets/home_current_budget_item_bg_img_DF6A61.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 120,
                viewportFraction: 0.9,
                disableCenter: false,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: _itemList
                .map((item) => HomeCurrentBudgetItem(
                      assetsUrl: item,
                    ))
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _itemList.map((color) {
              int index = _itemList.indexOf(color);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
