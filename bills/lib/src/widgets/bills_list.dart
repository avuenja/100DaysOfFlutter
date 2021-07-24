import 'package:flutter/material.dart';

import 'package:bills/src/data_example.dart';
import 'package:bills/src/models/bill.dart';
import 'package:bills/src/widgets/bills_card.dart';

class BillsList extends StatelessWidget {
  const BillsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bills.isNotEmpty
        ? Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(0.0),
              itemCount: bills.length,
              itemBuilder: (BuildContext context, int index) {
                return BillsCard(
                  bill: Bill.fromJson(bills[index]),
                );
              },
            ),
          )
        : const Expanded(
            child: Center(
              child: Text('No items'),
            ),
          );
  }
}
