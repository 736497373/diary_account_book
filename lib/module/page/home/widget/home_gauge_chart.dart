import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';

class HomeGaugeChart extends StatefulWidget {
  HomeGaugeChart({Key key}) : super(key: key);

  @override
  _HomeGaugeChartState createState() => _HomeGaugeChartState();
}

class _HomeGaugeChartState extends State<HomeGaugeChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 250,
      child: Echarts(
        option: '''
                  backgroundColor: '#000000',
                  toolbox: {
                      show: false,
                      feature: {
                          restore: {show: false},
                          saveAsImage: {show: false}
                      }
                  },
                  series : [
                      {
                          type: 'gauge',
                          z: 0,
                          min: 0,
                          max: 100,
                          splitNumber: 10,
                          radius: '100%',
                          axisLine: {      
                              lineStyle: {       // 属性lineStyle控制线条样式
                                  width: 1,
                              }
                          },
                          axisTick: {            // 坐标轴小标记
                              length: 15,        // 属性length控制线长
                              lineStyle: {       // 属性lineStyle控制线条样式
                                  color: 'auto'
                              }
                          },
                          splitLine: {           // 分隔线
                              length: 30,         // 属性length控制线长
                              lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                                  color: 'auto'
                              }
                          },
                          title: {
                              fontSize: 20,
                              fontStyle: 'italic'
                          },
                          detail: {
                              formatter: function (value) {
                                  return '25%';
                              },
                              color: '#fff',
                              rich: {}
                          },
                          data: [{value: 40, name: ''}]
                      },
                  ]
              }
              ''',
      ),
    );
  }
}
