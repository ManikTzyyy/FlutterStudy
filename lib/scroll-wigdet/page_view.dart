import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  

  @override

  
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 210,
            padding: EdgeInsets.all(10),
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                box(),
                box(),
                box(),
                box(),
              ],
            ),
          ),
          box(),
          box(),
          box(),
          box(),
          box(),
          box(),
          box(),
        ],
      )
    );
  }

   Widget box() {
    return Container(
      margin: EdgeInsets.all(10),
      height: 90,
      width: 90,
      color: Colors.blue,
      child: Center(child: Text("Hello"),),
    );
  }
}