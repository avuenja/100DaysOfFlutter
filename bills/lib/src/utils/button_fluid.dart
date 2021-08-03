import 'package:flutter/material.dart';

class KButtonFluid extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const KButtonFluid({required this.text, this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ElevatedButton(
        onPressed: this.onPressed ?? null,
        child: Text(this.text),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.blue.shade800,
          ),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(0.0),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 12.5),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size(double.infinity, 30),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
      ),
    );
  }
}
