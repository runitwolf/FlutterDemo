import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "标题",
          style: TextStyle(fontSize: 20.0, color: Colors.blueAccent[800]),
        ),
        centerTitle: true,
      ),
    );
  }
}
