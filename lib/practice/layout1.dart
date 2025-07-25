import 'package:flutter/material.dart';

class LatihanLayout1 extends StatelessWidget {
  const LatihanLayout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            Container(color: Colors.red, width: double.infinity, height: 100),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(color: Colors.green, width: 50, height: 50),
                Container(color: Colors.green, width: 50, height: 50),
                Container(color: Colors.green, width: 50, height: 50),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                Column(
                  spacing: 10,
                  children: [
                    Container(color: Colors.amber, width: 50, height: 50),
                    Container(color: Colors.amber, width: 50, height: 50),
                  ],
                ),
                Container(color: Colors.black, width: 200, height: 110),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [Container(color: Colors.blue, width: 50, height: 170)
             , Column(
              spacing: 10,
              children: [
                  Container(color: Colors.grey, width: 200, height: 50),
                  Container(color: Colors.grey, width: 200, height: 50),
                  Container(color: Colors.grey, width: 200, height: 50),
              ],)],
            ),
          ],
        ),
      ),
    );
  }
}
