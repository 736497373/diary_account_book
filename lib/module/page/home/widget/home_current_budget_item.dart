import 'package:flutter/material.dart';

class HomeCurrentBudgetItem extends StatefulWidget {
  final Color color;
  HomeCurrentBudgetItem({Key key, this.color}) : super(key: key);

  @override
  _HomeCurrentBudgetItemState createState() => _HomeCurrentBudgetItemState();
}

class _HomeCurrentBudgetItemState extends State<HomeCurrentBudgetItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      child: null,
    );
  }
}
