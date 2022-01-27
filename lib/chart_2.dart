import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:firztair_by_theejutha/copy_stopwatch_2.dart';

class chartStatic extends StatefulWidget {
  final List<double> graphValue; // passing data from another page
  chartStatic({Key key, @required this.graphValue}) : super(key: key);

  @override
  State<chartStatic> createState() => _chartStaticState(graphValue);
}

class _chartStaticState extends State<chartStatic> {
  final List<double> graphValue; // passing data from another class
  _chartStaticState(this.graphValue);

  List<ArrayData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              }),
          centerTitle: true,
          title: Text("CPR Result"),
        ),
        body: SfCartesianChart(
          title: ChartTitle(text: "CPR Result"),
          series: <ChartSeries>[
            LineSeries<ArrayData, double>(
                dataSource: _chartData,
                xValueMapper: (ArrayData sales, _) => sales.second,
                yValueMapper: (ArrayData sales, _) => sales.value)
          ],
        ),
      ),
    );
  }

  List<ArrayData> getChartData() {
    final List<ArrayData> chartData = [
      ArrayData(0, graphValue[0]), //42
      ArrayData(1, graphValue[1]), //47
      ArrayData(2, graphValue[2]), //43
      ArrayData(3, graphValue[3]), //49
      ArrayData(4, graphValue[4]), //54
      ArrayData(5, graphValue[5]), //41
      ArrayData(6, graphValue[6]), //58
      ArrayData(7, graphValue[7]), //51
      ArrayData(8, graphValue[8]), //98
      ArrayData(9, graphValue[9]), //41
      ArrayData(10, graphValue[10]), //53
      ArrayData(11, graphValue[11]), //72
      ArrayData(12, graphValue[12]), //86
      ArrayData(13, graphValue[13]), //52
      ArrayData(14, graphValue[14]), //94
      ArrayData(15, graphValue[15]), //92
      ArrayData(16, graphValue[16]), //86
      ArrayData(17, graphValue[17]), //72
      ArrayData(18, graphValue[18]), //94
      ArrayData(19, graphValue[19]),
      ArrayData(20, graphValue[20]),
      ArrayData(21, graphValue[21]),
      ArrayData(22, graphValue[22]),
      ArrayData(23, graphValue[23]),
      ArrayData(24, graphValue[24]),
      ArrayData(25, graphValue[25]),
      ArrayData(26, graphValue[26]),
      ArrayData(27, graphValue[27]),
      ArrayData(28, graphValue[28]),
      ArrayData(29, graphValue[29]),
      ArrayData(30, graphValue[30]),
      ArrayData(31, graphValue[31]),
      ArrayData(32, graphValue[32]),
      ArrayData(33, graphValue[33]),
      ArrayData(34, graphValue[34]),
      ArrayData(35, graphValue[35]),
      ArrayData(36, graphValue[36]),
      ArrayData(37, graphValue[37]),
      ArrayData(38, graphValue[38]),
      ArrayData(39, graphValue[39]),
      ArrayData(40, graphValue[40]),
      ArrayData(41, graphValue[41]),
      ArrayData(42, graphValue[42]),
      ArrayData(43, graphValue[43]),
      ArrayData(44, graphValue[44]),
      ArrayData(45, graphValue[45]),
      ArrayData(46, graphValue[46]),
      ArrayData(47, graphValue[47]),
      ArrayData(48, graphValue[48]),
      ArrayData(49, graphValue[49]),
      ArrayData(50, graphValue[50]), //10
      ArrayData(51, graphValue[51]),
      ArrayData(52, graphValue[52]),
      ArrayData(53, graphValue[53]),
      ArrayData(54, graphValue[54]),
      ArrayData(55, graphValue[55]),
      ArrayData(56, graphValue[56]),
      ArrayData(57, graphValue[57]),
      ArrayData(58, graphValue[58]),
      ArrayData(59, graphValue[59]),
    ];
    return chartData;
  }
}

class ArrayData {
  ArrayData(this.second, this.value);
  final double second;
  final double value;
}
