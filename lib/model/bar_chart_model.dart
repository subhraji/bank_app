import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel{
   String year;
   int financial;
   charts.Color color;

   BarChartModel({required this.year, required this.financial, required this.color});
}