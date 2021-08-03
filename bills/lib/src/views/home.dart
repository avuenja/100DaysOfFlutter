import 'package:bills/src/utils/navigation.dart';
import 'package:bills/src/views/add_bill.dart';
import 'package:flutter/material.dart';

import 'package:bills/src/top_bar.dart';
import 'package:bills/src/utils/button_fluid.dart';
import 'package:bills/src/widgets/bills_list.dart';
import 'package:bills/src/widgets/card.dart';
import 'package:bills/src/widgets/chart_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onPressed: () {
              KNavigation.push(context, AddBillView());
            },
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
