// import 'dart:math';
// import 'dart:ui' as ui;
//
// import 'package:flutter/material.dart';
//
// class CostGraphGenerator {
//   ui.Picture generateCostGraph(double initialCost) {
//     // Define the time period and calculate the costs
//     final timePeriod = List<int>.generate(12, (index) => index + 1); // Assuming a 12-month period
//     final costs = timePeriod.map((month) => initialCost * pow(1.1, month)).toList(); // Assuming a 10% increase per month
//
//     final recorder = ui.PictureRecorder();
//     final canvas = Canvas(recorder);
//
//     // Draw the graph on the canvas
//     final width = 400;
//     final height = 300;
//     final bgColor = const Color(0xFFF5F5F5); // lightgray
//     final lineColor = const Color(0xFF800080); // purple
//
//     canvas.drawColor(bgColor, BlendMode.srcOver);
//
//     final linePaint = Paint()
//       ..color = lineColor
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2.0;
//
//     final points = List<Offset>.generate(12, (index) => Offset(index.toDouble() * 30, -costs[index] * 0.02)).toList();
//     final path = Path()..addPolygon(points, false);
//     canvas.drawPath(path, linePaint);
//
//     final picture = recorder.endRecording();
//     return picture;
//   }
// }
//
// class CostGraphWidget extends StatefulWidget {
//   final double initialCost;
//
//   const CostGraphWidget({Key? key, required this.initialCost}) : super(key: key);
//
//   @override
//   _CostGraphWidgetState createState() => _CostGraphWidgetState();
// }
//
// class _CostGraphWidgetState extends State<CostGraphWidget> {
//   late ui.Picture costGraph;
//
//   @override
//   void initState() {
//     super.initState();
//     generateGraph();
//   }
//
//   Future<void> generateGraph() async {
//     final costGraphGenerator = CostGraphGenerator();
//     costGraph = costGraphGenerator.generateCostGraph(widget.initialCost);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: _GraphPainter(costGraph),
//     );
//   }
// }
//
// class _GraphPainter extends CustomPainter {
//   final ui.Picture costGraph;
//
//   _GraphPainter(this.costGraph);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final pictureWidth = costGraph.width.toDouble();
//     final pictureHeight = costGraph.height.toDouble();
//     final src = Rect.fromLTRB(0, 0, pictureWidth, pictureHeight);
//     final dst = Rect.fromLTWH(0, 0, size.width, size.height);
//
//     canvas.drawPicture(costGraph, src, dst, Paint());
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
