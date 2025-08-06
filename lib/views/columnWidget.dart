import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ini column"),),
      body: Container(
        width: double.infinity,
        color: Colors.grey,
        child: Column(
          spacing: 25, //ini untuk gap antara widget widgetnya
          crossAxisAlignment:
              CrossAxisAlignment.start, //mengatur posisi secara horizontal
          mainAxisAlignment:
              MainAxisAlignment.start, //mengatur posisi secara vertikal
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("kembali")),
            Container(color: Colors.amber, width: 100, height: 100),
            Container(color: Colors.black, width: 100, height: 100),
            Container(color: Colors.amber, width: 100, height: 100),
            Container(color: Colors.black, width: 100, height: 100),
          ],
        ),
      ),
    );
  }
}
