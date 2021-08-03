import 'package:bills/src/top_bar.dart';
import 'package:bills/src/utils/button_fluid.dart';
import 'package:bills/src/utils/navigation.dart';
import 'package:bills/src/utils/text_form_field.dart';
import 'package:bills/src/widgets/card.dart';
import 'package:flutter/material.dart';

class AddBillView extends StatelessWidget {
  const AddBillView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          KTopBar(),
          KCard(
            child: Form(
              child: Column(
                children: [
                  KTextFormField(
                    label: 'Description',
                  ),
                  KTextFormField(
                    label: 'Category',
                  ),
                  KTextFormField(
                    label: 'Value',
                    isNumber: true,
                  ),
                  KTextFormField(
                    label: 'Date',
                    isNumber: true,
                    hasMarginBottom: false,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          KButtonFluid(
            text: 'Save new bill',
            onPressed: () {
              KNavigation.pop(context);
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
