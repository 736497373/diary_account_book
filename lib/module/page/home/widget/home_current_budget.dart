import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCurrentBudget extends StatefulWidget {
  HomeCurrentBudget({Key key}) : super(key: key);

  @override
  _HomeCurrentBudgetState createState() => _HomeCurrentBudgetState();
}

class _HomeCurrentBudgetState extends State<HomeCurrentBudget> {
  int _current = 0;
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
            items: [Colors.green, Colors.red, Colors.orange]
                .map((item) => Container(
                      height: 120,
                      color: item,
                    ))
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Colors.green, Colors.red, Colors.orange].map((color) {
              int index =
                  [Colors.green, Colors.red, Colors.orange].indexOf(color);
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
