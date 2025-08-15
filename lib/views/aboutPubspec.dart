import 'package:flutter/material.dart';

class AboutPubspec extends StatelessWidget {
  const AboutPubspec({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          spacing: 20,
          children: [
            Image.asset('lib/static/images/image.jpg', width: 300, height: 300,),
            Image.asset('assets/images/135.png'),
            Text('Hello World', style: TextStyle(
              fontFamily: 'boldini'
            ),),
            Text('Hello World', style: TextStyle(
              fontFamily: 'chillax'
            ),)
          ],
        )
      ),
    );
  }
}