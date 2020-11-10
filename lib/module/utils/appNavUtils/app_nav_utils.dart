import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppNavUtil extends StatefulWidget {
  final String title;
  final Widget body;
  final bool isBack;
  final bool isAppNav;
  List<Widget> actions = [];

  AppNavUtil(
      {Key key,
      this.title,
      this.body,
      this.isBack,
      this.actions,
      this.isAppNav = true})
      : super(key: key);
  _AppNavUtilState createState() => _AppNavUtilState();
}

class _AppNavUtilState extends State<AppNavUtil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: widget.isAppNav
          ? AppBar(
              leading: widget.isBack
                  ? BackButton(
                      color: Colors.black,
                      onPressed: () => (Navigator.pop(context)),
                    )
                  : null,
              actions: widget.actions,
              title: Text(widget.title,
                  style: new TextStyle(
                    color: ColorsUtil.hexColor(0x333333),
                    fontSize: 17,
                  )),
              elevation: 0.0,
              backgroundColor: ColorsUtil.hexColor(0xffffff),
            )
          : null,
      body: Container(
        color: ColorsUtil.hexColor(0xF1F2F4),
        child: widget.body,
      ),
    ));
  }
}
