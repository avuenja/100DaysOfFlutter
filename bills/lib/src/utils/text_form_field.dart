import 'package:flutter/material.dart';

class KTextFormField extends StatelessWidget {
  final String label;
  final bool? hasMarginBottom;
  final bool? isNumber;

  const KTextFormField({
    required this.label,
    this.hasMarginBottom,
    this.isNumber,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: hasMarginBottom == null || hasMarginBottom == true
          ? const EdgeInsets.only(bottom: 12.5)
          : null,
      child: TextFormField(
        keyboardType: isNumber == null || isNumber == false
            ? TextInputType.text
            : TextInputType.number,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: this.label,
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          filled: true,
        ),
      ),
    );
  }
}
