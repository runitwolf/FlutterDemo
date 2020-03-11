import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectPage extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
            child: Text("项目",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(32)
                ))
        )
    );
  }
}
