import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
       appBar: AppBar(title: Text("ini Row"),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(width: 30, height: 30, color: Colors.red),
            Container(width: 30, height: 30, color: Colors.green),
            Container(width: 30, height: 30, color: Colors.red),
            Container(width: 30, height: 30, color: Colors.green),
   
          ],
        ),
      ),
    );
  }
}
