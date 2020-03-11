import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
            child: Text("首页",
              style: TextStyle(
                fontSize: ScreenUtil().setSp(32)
              ))
        )
    );
  }
}
