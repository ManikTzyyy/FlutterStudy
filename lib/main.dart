import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//widget stateles pertama
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final judul = "Aplikasi";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: judul,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

//widget stateles kedua
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Judul Appsnya",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu, color: Colors.white),
        actions: [Icon(Icons.notifications), Icon(Icons.person)],
      ),
      body: Column(
        children: [
          Text("Ini Bodynya", style: TextStyle(fontSize: 25)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {},
            child: Text("Tombol", style: TextStyle(color: Colors.black)),
          ),
          ElevatedButton.icon(
            onPressed:(){},
            icon: Icon(Icons.send),
            label: Text("Send Data"),
            )
        ],
      ),
    );
  }
}

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: ,
//       body: ,
//     );
//   }
// }
