import 'package:flutter/material.dart';

class SingleList extends StatelessWidget {
  const SingleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              spacing: 20,
              children: [
                box(),
                box(),
                box(),
                box(),
                box(),
                box(),
                box(),
                box(),
                box(),
                box(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget box() {
    return Container(height: 100, width: 100, color: Colors.blue);
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 50,
        child: ListView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          children: [
            box(),
            SizedBox(width: 10),
            box(),
            SizedBox(width: 10),
            box(),
            SizedBox(width: 10),
            box(),
            SizedBox(width: 10),
            box(),
            SizedBox(width: 10),
            box(),
            SizedBox(width: 10),
            box(),
            SizedBox(width: 10),
            box(),
            SizedBox(width: 10),
            box(),
            SizedBox(width: 10),
            box(),
            SizedBox(width: 10),
            box(),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }

  Widget box() {
    return Container(
      height: 90,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text("kiri"), Text("kanan")]),
    );
  }
}
