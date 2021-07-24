import 'package:flutter/material.dart';

import 'package:bills/src/utils/circular_chart.dart';
import 'package:bills/src/widgets/card.dart';

class ChartCard extends StatelessWidget {
  const ChartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CircularChart(
                progress: 75.0,
                color: Colors.red,
              ),
              CircularChart(
                progress: 80.0,
                color: Colors.green,
                size: 150.0,
              ),
              CircularChart(
                progress: 55.0,
                color: Colors.yellow.shade700,
                size: 100.0,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChartLabel(
                description: 'Expense',
                color: Colors.red,
              ),
              SizedBox(
                height: 10.0,
              ),
              ChartLabel(
                description: 'Income',
                color: Colors.green,
              ),
              SizedBox(
                height: 10.0,
              ),
              ChartLabel(
                description: 'Opened',
                color: Colors.yellow.shade700,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChartLabel extends StatelessWidget {
  final String description;
  final Color? color;

  const ChartLabel({required this.description, this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20.0,
          width: 20.0,
          decoration: BoxDecoration(
            color: this.color ?? Colors.grey,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(this.description),
      ],
    );
  }
}
