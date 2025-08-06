import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 221, 221, 221),
        child: Row(
          children: [
            Flexible(
              child: Container(color: Colors.red,)),
            Flexible(
              child: Container(
                child: Text("Ini flexible"),
                color: Colors.blue,))
          ],
        ),
        ),
    );
  }
}
