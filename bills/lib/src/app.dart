import 'package:bills/src/utils/button_fluid.dart';
import 'package:bills/src/widgets/chart_card.dart';
import 'package:flutter/material.dart';

import 'package:bills/src/top_bar.dart';
import 'package:bills/src/widgets/card.dart';
import 'package:bills/src/widgets/bills_list.dart';

class KApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bills',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            KTopBar(),
            ChartCard(),
            KCard(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Overview'),
                  Text('Incomes'),
                  Text('Expenses'),
                ],
              ),
            ),
            BillsList(),
            KButtonFluid(
              text: 'Add new bill',
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
