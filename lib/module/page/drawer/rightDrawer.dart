import 'package:diary_account_book/module/services/EventBusUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class RightDrawerPage extends StatefulWidget {
  RightDrawerPage({Key key}) : super(key: key);

  @override
  _RightDrawerPageState createState() => _RightDrawerPageState();
}

class _RightDrawerPageState extends State<RightDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: ScreenUtil.screenHeight,
          width: ScreenUtil.screenWidth,
          child: Image.asset(
            'assets/bg.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          child: Container(
            child: Row(
              children: [
                Container(
                  height: ScreenUtil.screenHeight,
                  width: ScreenUtil.screenWidth * 0.4,
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      eventBus.fire(RootPageEvent());
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  width: ScreenUtil.screenWidth * 0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('生活账本'),
                          onPressed: () {
                            eventBus.fire(RootPageEvent());
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        width: 150,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('商业账本'),
                          onPressed: () {
                            eventBus.fire(RootPageEvent());
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        width: 150,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('旅游账本'),
                          onPressed: () {
                            eventBus.fire(RootPageEvent());
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
