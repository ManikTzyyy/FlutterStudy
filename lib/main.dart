// ignore_for_file: avoid_print

import 'package:aplikasi_kedua/practice/layout1.dart';
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
      home: const LatihanLayout1(),
    );
  }
}

//homepage
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void helloWorld() {
    print("hello World");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
          width: 100,
          image: NetworkImage(
            "https://storage.googleapis.com/cms-storage-bucket/lockup_flutter_horizontal.c823e53b3a1a7b0d36a9.png",
          ),
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
        backgroundColor: Colors.blue,
        centerTitle: true,
        toolbarHeight: 100,
        toolbarOpacity: 1,
      ),
      body: Center(
        child: const Image(
          fit: BoxFit.cover,
          height: 400,
          width: 200,
          image: NetworkImage(
            "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          ),
        ),
      ),
    );
  }
}

//Widget Container
class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Container"),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20),
        margin: EdgeInsets.all(20),
        width: 500,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        child: Text("Ini Teks"),
      ),
    );
  }
}

//Widget Column
class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

//Widget Row
class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
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

//widget Wrap
class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Wrap(
          spacing: 20,
          runSpacing: 10,
          alignment: WrapAlignment.spaceBetween,
          children: [
            Container(width: 50, height: 30, color: Colors.red),
            Container(width: 50, height: 30, color: Colors.green),
            Container(width: 50, height: 30, color: Colors.red),
            Container(width: 50, height: 30, color: Colors.green),
          ],
        ),
      ),
    );
  }
}

