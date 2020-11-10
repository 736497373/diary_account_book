import 'package:diary_account_book/module/services/EventBusUtils.dart';
import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';

class HomeCurrentOverViewWidget extends StatelessWidget {
  const HomeCurrentOverViewWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              top: 20,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      '本月支出(元)',
                      style: TextStyle(
                          fontSize: 14, color: ColorsUtil.hexColor(0x999999)),
                    ),
                  ),
                  Container(
                    child: Text(
                      '6371.70',
                      style: TextStyle(
                          fontSize: 28, color: ColorsUtil.hexColor(0x333333)),
                    ),
                  ),
                ],
              )),
          Positioned(
              top: 100,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text('本月收入',
                          style: TextStyle(
                              fontSize: 14,
                              color: ColorsUtil.hexColor(0x999999)))),
                  Container(
                    child: Text(
                      '6371.70',
                      style: TextStyle(
                          fontSize: 28, color: ColorsUtil.hexColor(0x333333)),
                    ),
                  ),
                ],
              )),
          Positioned(
              top: 100,
              right: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text('结余',
                          style: TextStyle(
                              fontSize: 14,
                              color: ColorsUtil.hexColor(0x999999)))),
                  Container(
                    child: Text(
                      '6371.70',
                      style: TextStyle(
                          fontSize: 28, color: ColorsUtil.hexColor(0x333333)),
                    ),
                  ),
                ],
              )),
          Positioned(
              top: 10,
              right: 0,
              child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  child: FlatButton(
                      height: 30,
                      color: Colors.green,
                      onPressed: () {
                        eventBus.fire(RootPageEvent());
                      },
                      child: Text(
                        '生活账本',
                        style: TextStyle(color: Colors.white),
                      ))))
        ],
      ),
    );
  }
}
