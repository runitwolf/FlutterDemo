import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
            child: Text("我的",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(32)
                ))
        )
    );
  }
}
