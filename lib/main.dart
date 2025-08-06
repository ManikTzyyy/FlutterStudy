// ignore_for_file: avoid_print, unused_import

import 'package:aplikasi_kedua/practice/layout1.dart';
import 'package:aplikasi_kedua/scroll-wigdet/listview_singleList.dart';
import 'package:aplikasi_kedua/scroll-wigdet/page_view.dart';
import 'package:aplikasi_kedua/views/columnWidget.dart';
import 'package:aplikasi_kedua/views/flexibleVSexpanded.dart';
import 'package:aplikasi_kedua/views/rowWidget.dart';
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
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        '/column' : (context) => ColumnWidget(),
        '/row' : (context) => RowWidget(),
        '/flex-expand' : (context) => FlexibelVSExpanded()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ini Homepage"), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/column');
              },
              child: Text("halaman column"),
            ),
             ElevatedButton(
              onPressed: () {
               Navigator.pushNamed(context, '/row');
              },
              child: Text("halaman Row"),
            ),
             ElevatedButton(
              onPressed: () {
               Navigator.pushNamed(context, '/flex-expand');
              },
              child: Text("halaman flexible vs expanded"),
            ),
          ],
        ),
      ),
    );
  }
}

//homepage
class imgPage extends StatelessWidget {
  const imgPage({super.key});

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


//Widget Row

//widget Wrap

//widget expanded


