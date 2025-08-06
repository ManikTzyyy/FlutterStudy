import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(color: Colors.blue),
              flex: 2,
              ),
            Expanded(
              flex: 8,
              child: Container(color: Colors.red, child: Text("Ini container"),)),
          ],
        ),
      ),
    );
  }
}
