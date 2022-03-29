import 'package:flutter/material.dart';
import 'package:flutter_16/listview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListViewPage(),
    );
  }
}
