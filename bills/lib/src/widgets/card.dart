import 'package:flutter/material.dart';

class KCard extends StatelessWidget {
  final Widget child;

  const KCard({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 12.5),
      padding: const EdgeInsets.all(12.5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.5),
      ),
      child: this.child,
    );
  }
}
