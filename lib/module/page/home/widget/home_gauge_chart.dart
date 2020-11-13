import 'dart:ui';

import 'package:diary_account_book/module/utils/colorUtils/colors_utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeGaugeChart extends StatefulWidget {
  Size size;
  HomeGaugeChart({Key key, this.size}) : super(key: key);

  @override
  _HomeGaugeChartState createState() => _HomeGaugeChartState();
}

class _HomeGaugeChartState extends State<HomeGaugeChart> {
  int pressures = 0;
  final double wholeCirclesRadian = 6.283185307179586;

  ///虽然一个圆被分割为50份，但是只显示38份
  final int tableCount = 50;
  Size dashBoardSize;
  double tableSpace;
  Picture _pictureBackGround;

  @override
  void initState() {
    super.initState();
    dashBoardSize = widget.size;
    tableSpace = wholeCirclesRadian / tableCount;
    _pictureBackGround =
        DashBoardTablePainter(tableSpace, dashBoardSize).getBackGround();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: dashBoardSize,
      painter: new DashBoardIndicatorPainter(_pictureBackGround),
    );
  }
}

class DashBoardIndicatorPainter extends CustomPainter {
  final Picture pictureBackGround;

  DashBoardIndicatorPainter(this.pictureBackGround);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPicture(pictureBackGround);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class DashBoardTablePainter {
  final double tableSpace;
  final Size size;
  final PictureRecorder _recorder = PictureRecorder();

  DashBoardTablePainter(this.tableSpace, this.size);

  Picture getBackGround() {
    Canvas canvas = Canvas(_recorder);
    canvas.clipRect(new Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    drawTable(canvas, size);
    return _recorder.endRecording();
  }

  ///画仪表盘的表格
  void drawTable(Canvas canvas, Size size) {
    canvas.save();
    double halfWidth = size.width / 2;
    double halfHeight = size.height / 2;
    canvas.translate(halfWidth, halfHeight);

    Paint paintMain = new Paint();
    paintMain.color = ColorsUtil.hexColor(0xffffff, alpha: 0.3);
    paintMain.strokeWidth = 2;
    paintMain.style = PaintingStyle.fill;

    Paint paintOther = new Paint();
    paintOther.color = ColorsUtil.hexColor(0xffffff, alpha: 0.3);
    paintOther.strokeWidth = 1.48;
    paintOther.style = PaintingStyle.fill;

    changePaintColors(paintOther, 25);
    drawSmallLine(canvas, paintOther, halfHeight);
    canvas.save();

    for (int i = 25; i <= 40; i++) {
      canvas.rotate(tableSpace);
      if (!checkCurrentLine(i)) {
        changePaintColors(paintOther, i);
        drawSmallLine(canvas, paintOther, halfHeight);
      } else {
        changePaintColors(paintMain, i);
        drawLongLine(canvas, paintMain, halfHeight);
      }
    }
    canvas.restore();
    for (int i = 25; i >= 10; i--) {
      canvas.rotate(-tableSpace);
      if (!checkCurrentLine(i)) {
        changePaintColors(paintOther, i);
        drawSmallLine(canvas, paintOther, halfHeight);
      } else {
        changePaintColors(paintMain, i);
        drawLongLine(canvas, paintMain, halfHeight);
      }
    }
    canvas.restore();
  }

  void changePaintColors(Paint paint, int value) {
    if (value <= 24) {
      paint.color = Colors.white;
    } else {
      paint.color = ColorsUtil.hexColor(0xffffff, alpha: 0.3);
    }
  }

  bool checkCurrentLine(int i) {
    if (i == 24) return true;
    return false;
  }

  ///画长线
  void drawLongLine(Canvas canvas, Paint paintMain, double halfHeight) {
    canvas.drawLine(new Offset(0.0, -halfHeight),
        new Offset(0.0, -halfHeight + 12), paintMain);
  }

  ///画短线
  void drawSmallLine(Canvas canvas, Paint paintOther, double halfHeight) {
    canvas.drawLine(new Offset(0.0, -halfHeight),
        new Offset(0.0, -halfHeight + 7), paintOther);
  }
}
