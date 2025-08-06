import 'package:flutter/material.dart';

class FlexibelVSExpanded extends StatelessWidget {
  const FlexibelVSExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("ini column"),),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text("Ini adalah expanded"),
            Row(
              children: [
                Expanded(child: Container(color: Colors.red, height: 50,),),
                Expanded(child: Container(color: Colors.blue, height: 50, child: Text("Hello ini"),),),
                Expanded(child: Container(color: Colors.green, height: 50,),),
              ],
            ),
            Text("======================="),
            Text("Ini adalah Flexible"),
             Row(
              children: [
                Flexible(child: Container(color: Colors.red, height: 50,)),
                Flexible(child: Container(color: Colors.blue, height: 50, child: Text("Hello ini"),),),
                Flexible(child: Container(color: Colors.green, height: 50,),),
              ],
            ),
            Text("======================="),
            Text("Ini adalah Container"),
             Row(
              children: [
                 Container(color: Colors.red, height: 50, width: MediaQuery.of(context).size.width*0.5,),
                 Expanded(child: Container(color: Colors.blue, height: 50,))
              ],
            ),
          ],
        ),
      ),
    );
  }




}