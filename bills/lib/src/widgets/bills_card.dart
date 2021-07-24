import 'package:flutter/material.dart';

import 'package:bills/src/models/bill.dart';
import 'package:bills/src/widgets/card.dart';

class BillsCard extends StatelessWidget {
  final Bill bill;

  const BillsCard({required this.bill, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KCard(
      child: Row(
        children: [
          bill.type == 'expense'
              ? Icon(
                  Icons.home_outlined,
                  color: Colors.red.shade700,
                )
              : Icon(
                  Icons.payments_outlined,
                  color: Colors.green.shade700,
                ),
          SizedBox(
            width: 12.5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bill.description,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                bill.category,
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          Spacer(),
          Text('R\$ ${bill.amount}'),
        ],
      ),
    );
  }
}
