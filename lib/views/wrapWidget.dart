import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Wrap(
          spacing: 20,
          runSpacing: 10,
          alignment: WrapAlignment.spaceBetween,
          children: [
            Container(width: 50, height: 30, color: Colors.red),
            Container(width: 50, height: 30, color: Colors.green),
            Container(width: 50, height: 30, color: Colors.red),
            Container(width: 50, height: 30, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
