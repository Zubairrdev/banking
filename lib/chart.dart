import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  late TooltipBehavior _tooltipBehavior;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SfSparkLineChart(
          color: Colors.yellow,
          data: <double>[
            1, 5, -6, 0, 1, -2, 7, -7, -4, -10, 13, -6, 7, 5, 11, 5, 3
          ],
        )
    );
  }
}
