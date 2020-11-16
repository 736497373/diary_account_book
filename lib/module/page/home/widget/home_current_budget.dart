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
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _itemList.map((color) {
                int index = _itemList.indexOf(color);
                return Container(
                  width: 22.0,
                  height: 5.0,
                  margin: EdgeInsets.only(top: 12.0),
                  color: _current == index
                      ? ColorsUtil.hexColor(0x3247D3)
                      : ColorsUtil.hexColor(0xD8D8D8),
                );
              }).toList(),
            ),
          ),
          Container(
            color: Colors.white,
            height: 10,
          )
        ],
      ),
    );
  }
}
