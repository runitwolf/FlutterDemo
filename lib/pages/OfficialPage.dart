import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfficialPage extends StatefulWidget {
  @override
  _OfficialPageState createState() => _OfficialPageState();
}

class _OfficialPageState extends State<OfficialPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
            child: Text("公众号",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(32)
                ))
        )
    );
  }
}
