/*
 *  description:  底部选择器 包含日期，单列、多列文本
 */

import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:date_format/date_format.dart';

const double _kPickerHeight = 216.0;
const double _kItemHeight = 40.0;
const Color _kBtnColor = Color(0xFF323232); //50
const Color _kTitleColor = Color(0xFF787878); //120
const double _kTextFontSize = 17.0;

typedef _StringClickCallBack = void Function(int selectIndex, Object selectStr);
typedef _ArrayClickCallBack = void Function(
    List<int> selecteds, List<dynamic> strData);
typedef _DateClickCallBack = void Function(
    dynamic selectDateStr, dynamic selectDate);

enum DateType {
  YMD, // y, m, d
  YM, // y ,m
  YMD_HM, // y, m, d, hh, mm
  YMD_AP_HM, // y, m, d, ap, hh, mm
}

class PickerUtils {
  //单列
  static void showStringPicker<T>(
    BuildContext context, {
    @required List<T> data,
    String title,
    int normalIndex,
    PickerDataAdapter adapter,
    @required _StringClickCallBack clickCallBack,
  }) {
    openModalPicker(context,
        adapter: adapter ?? PickerDataAdapter(pickerdata: data, isArray: false),
        clickCallBack: (Picker picker, List<int> selecteds) {
      clickCallBack(selecteds[0], data[selecteds[0]]);
    }, selecteds: [normalIndex ?? 0], title: title);
  }

  //多列
  static void showArrayPicker<T>(
    BuildContext context, {
    @required List<T> data,
    String title,
    List<int> normalIndex,
    PickerDataAdapter adapter,
    @required _ArrayClickCallBack clickCallBack,
  }) {
    openModalPicker(context,
        adapter: adapter ?? PickerDataAdapter(pickerdata: data, isArray: true),
        clickCallBack: (Picker picker, List<int> selecteds) {
      clickCallBack(selecteds, picker.getSelectedValues());
    }, selecteds: normalIndex, title: title);
  }

  static void openModalPicker(
    BuildContext context, {
    @required PickerAdapter adapter,
    String title,
    List<int> selecteds,
    @required PickerConfirmCallback clickCallBack,
  }) {
    new Picker(
            containerColor: Colors.white,
            backgroundColor: Colors.white,
            adapter: adapter,
            title: new Text(title ?? "请选择",
                style:
                    TextStyle(color: _kTitleColor, fontSize: _kTextFontSize)),
            selecteds: selecteds,
            cancelText: '取消',
            confirmText: '确定',
            cancelTextStyle:
                TextStyle(color: _kBtnColor, fontSize: _kTextFontSize),
            confirmTextStyle:
                TextStyle(color: _kBtnColor, fontSize: _kTextFontSize),
            textAlign: TextAlign.right,
            itemExtent: _kItemHeight,
            height: _kPickerHeight,
            selectedTextStyle: TextStyle(color: Colors.black),
            onConfirm: clickCallBack)
        .showModal(context);
  }

  //日期选择器
  static void showDatePicker(
    BuildContext context, {
    DateType dateType,
    String title,
    DateTime maxValue,
    DateTime minValue,
    DateTime value,
    DateTimePickerAdapter adapter,
    @required _DateClickCallBack clickCallback,
  }) {
    int timeType;
    if (dateType == DateType.YM) {
      timeType = PickerDateTimeType.kYM;
    } else if (dateType == DateType.YMD_HM) {
      timeType = PickerDateTimeType.kYMDHM;
    } else if (dateType == DateType.YMD_AP_HM) {
      timeType = PickerDateTimeType.kYMD_AP_HM;
    } else {
      timeType = PickerDateTimeType.kYMD;
    }

    openModalPicker(context,
        adapter: adapter ??
            DateTimePickerAdapter(
              type: timeType,
              isNumberMonth: true,
              yearSuffix: "年",
              monthSuffix: "月",
              daySuffix: "日",
              strAMPM: const ["上午", "下午"],
              maxValue: maxValue,
              minValue: minValue,
              value: value ?? DateTime.now(),
            ),
        title: title, clickCallBack: (Picker picker, List<int> selecteds) {
      var time = (picker.adapter as DateTimePickerAdapter).value;
      var timeStr;
      if (dateType == DateType.YM) {
        timeStr = time.year.toString() + "年" + time.month.toString() + "月";
      } else if (dateType == DateType.YMD_HM) {
        timeStr = time.year.toString() +
            "年" +
            time.month.toString() +
            "月" +
            time.day.toString() +
            "日" +
            time.hour.toString() +
            "时" +
            time.minute.toString() +
            "分";
      } else if (dateType == DateType.YMD_AP_HM) {
        var str = formatDate(time, [am]) == "AM" ? "上午" : "下午";
        timeStr = time.year.toString() +
            "年" +
            time.month.toString() +
            "月" +
            time.day.toString() +
            "日" +
            str +
            time.hour.toString() +
            "时" +
            time.minute.toString() +
            "分";
      } else {
        timeStr = time.year.toString() +
            "年" +
            time.month.toString() +
            "月" +
            time.day.toString() +
            "日";
      }
      clickCallback(timeStr, picker.adapter.text);
    });
  }

  showPickerIcons(BuildContext context) {
    Picker(
      adapter: PickerDataAdapter(data: [
        PickerItem(text: Icon(Icons.add), value: Icons.add, children: [
          PickerItem(text: Icon(Icons.more)),
          PickerItem(text: Icon(Icons.aspect_ratio)),
          PickerItem(text: Icon(Icons.android)),
          PickerItem(text: Icon(Icons.menu)),
        ]),
        PickerItem(text: Icon(Icons.title), value: Icons.title, children: [
          PickerItem(text: Icon(Icons.more_vert)),
          PickerItem(text: Icon(Icons.ac_unit)),
          PickerItem(text: Icon(Icons.access_alarm)),
          PickerItem(text: Icon(Icons.account_balance), children: [
            PickerItem(text: Icon(Icons.access_alarm)),
            PickerItem(text: Icon(Icons.more_vert)),
          ]),
        ]),
        PickerItem(text: Icon(Icons.face), value: Icons.face, children: [
          PickerItem(text: Icon(Icons.add_circle_outline)),
          PickerItem(text: Icon(Icons.add_a_photo)),
          PickerItem(text: Icon(Icons.access_time)),
          PickerItem(text: Icon(Icons.adjust)),
        ]),
        PickerItem(
            text: Icon(Icons.linear_scale),
            value: Icons.linear_scale,
            children: [
              PickerItem(text: Icon(Icons.assistant_photo)),
              PickerItem(text: Icon(Icons.account_balance)),
              PickerItem(text: Icon(Icons.airline_seat_legroom_extra)),
              PickerItem(text: Icon(Icons.airport_shuttle)),
              PickerItem(text: Icon(Icons.settings_bluetooth)),
            ]),
        PickerItem(text: Icon(Icons.close), value: Icons.close),
      ]),
      title: Text("Select Icon"),
      selectedTextStyle: TextStyle(color: Colors.blue),
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.getSelectedValues());
      },
    ).showModal(context);
  }
}
