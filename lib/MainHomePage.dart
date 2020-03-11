import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_demo/pages/MainPage.dart';
import 'package:flutter_demo/pages/MinePage.dart';
import 'package:flutter_demo/pages/ProjectPage.dart';
import 'package:flutter_demo/pages/OfficialPage.dart';
import 'package:flutter_demo/TabConfig.dart';

class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _currentIndex = 0;
  PageController pageController;
  List<Widget> _pages;
  List<NavigationIconView> _navigationIconView = [];

  @override
  void initState() {
    super.initState();
    pageController = PageController(
        initialPage: _currentIndex, keepPage: true, viewportFraction: 1.0);
    _pages = [MainPage(),ProjectPage(),OfficialPage(), MinePage()];
  }

  @override
  Widget build(BuildContext context) {
    //If you want to set the font size is scaled according to the system's "font size" assist option
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
    initData();

    //设置点击底部tab切换页面的效果
    BottomNavigationBar navigationBar = BottomNavigationBar(
        items:_navigationIconView.map((NavigationIconView navigationIconView) => navigationIconView.item).toList(),
        currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
      },
    );

    return Scaffold(
      //设置左右滑动翻页的效果
      body: PageView.builder(
        itemBuilder: (BuildContext context,int index){
          return _pages[index];
        },
        controller: pageController,
        itemCount: _pages.length,
        onPageChanged: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),

      //设置底部切换
      bottomNavigationBar: navigationBar,
    );
  }

  void initData() {
    _navigationIconView.clear();
    for (var i = 0; i < TabConfig.HOME_TAB_TITLES.length; i++) {
      NavigationIconView iconView = NavigationIconView(
          title: TabConfig.HOME_TAB_TITLES[i],
          icon: Image.asset(TabConfig.HOME_TAB_NORMALICON[i],
              width: TabConfig.width, height: TabConfig.height),
          activeIcon: Image.asset(TabConfig.HOME_TAB_ACTIVEICON[i],
              width: TabConfig.width, height: TabConfig.height));

      _navigationIconView.add(iconView);
    }
  }
}

class NavigationIconView {
  String title;
  Widget icon;
  Widget activeIcon;
  BottomNavigationBarItem item;

  NavigationIconView({this.title, this.icon, this.activeIcon}) {
    item = new BottomNavigationBarItem(
        icon: icon,
        activeIcon: activeIcon,
        title: Text(title,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(30),
            )),
        backgroundColor: Colors.white);
  }
}
