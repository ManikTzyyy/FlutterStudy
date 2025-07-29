// ignore_for_file: avoid_print, unused_import

import 'package:aplikasi_kedua/practice/layout1.dart';
import 'package:aplikasi_kedua/scroll-wigdet/listview_singleList.dart';
import 'package:aplikasi_kedua/scroll-wigdet/page_view.dart';
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
      home: const PageViewWidget(),
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

//widget expanded
class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(color: Colors.blue),
              flex: 2,
              ),
            Expanded(
              flex: 8,
              child: Container(color: Colors.red, child: Text("Ini container"),)),
          ],
        ),
      ),
    );
  }
}


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

class FlexibelVSExpanded extends StatelessWidget {
  const FlexibelVSExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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