import 'package:diary_account_book/module/services/EventBusUtils.dart';
import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';

class HomeCurrentOverViewWidget extends StatelessWidget {
  const HomeCurrentOverViewWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              top: 20,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      '本月支出(元)',
                      style: TextStyle(
                          fontSize: 14,
                          color: ColorsUtil.hexColor(0x8A8F90),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Text(
                      '6371.70',
                      style: TextStyle(
                          fontSize: 36,
                          color: ColorsUtil.hexColor(0x3C4546),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
          Positioned(
              top: 100,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text(
                    '本月收入',
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorsUtil.hexColor(0x8A8F90),
                        fontWeight: FontWeight.w600),
                  )),
                  Container(
                    child: Text(
                      '6371.70',
                      style: TextStyle(
                          fontSize: 24,
                          color: ColorsUtil.hexColor(0x3C4546),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
          Positioned(
              top: 100,
              left: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text(
                    '结余',
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorsUtil.hexColor(0x8A8F90),
                        fontWeight: FontWeight.w600),
                  )),
                  Container(
                    child: Text(
                      '6371.70',
                      style: TextStyle(
                          fontSize: 24,
                          color: ColorsUtil.hexColor(0x3C4546),
                          fontWeight: FontWeight.bold),
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
                      topLeft: Radius.circular(36),
                      bottomLeft: Radius.circular(36)),
                  child: FlatButton(
                      height: 36,
                      color: ColorsUtil.hexColor(0x2B2ACA),
                      onPressed: () {
                        eventBus.fire(RootPageEvent());
                      },
                      child: Text(
                        '生活账本',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ))))
        ],
      ),
    );
  }
}
