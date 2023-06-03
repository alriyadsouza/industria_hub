// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';
//
// class GraphApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Graph Example'),
//         ),
//         body: Center(
//           child: GraphWidget(),
//         ),
//       ),
//     );
//   }
// }
//
// class GraphWidget extends StatefulWidget {
//   @override
//   _GraphWidgetState createState() => _GraphWidgetState();
// }
//
// class _GraphWidgetState extends State<GraphWidget> {
//   late List<SalesData> _data;
//
//   @override
//   void initState() {
//     super.initState();
//     _data = _generateData();
//   }
//
//   List<SalesData> _generateData() {
//     return [
//       SalesData(0, 10),
//       SalesData(1, 20),
//       SalesData(2, 30),
//       SalesData(3, 40),
//       SalesData(4, 50),
//     ];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       padding: EdgeInsets.all(16),
//       child: SfCartesianChart(
//         primaryXAxis: NumericAxis(),
//         series: <LineSeries<SalesData, int>>[
//           LineSeries<SalesData, int>(
//             dataSource: _data,
//             xValueMapper: (SalesData sales, _) => sales.month,
//             yValueMapper: (SalesData sales, _) => sales.value,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class SalesData {
//   final int month;
//   final int value;
//
//   SalesData(this.month, this.value);
// }
