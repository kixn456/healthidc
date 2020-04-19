

import 'package:flutter/material.dart';
import 'package:hmbc/page/Insurance.dart';
import 'package:hmbc/page/addRecord.dart';
import 'package:hmbc/page/goods/goodsDetail.dart';
import 'package:hmbc/page/goodsList.dart';
import 'package:hmbc/page/home.dart';
import 'package:hmbc/page/htmlView.dart';
import 'package:hmbc/page/index.dart';
import 'package:hmbc/page/indexPage.dart';
import 'package:hmbc/page/insure.dart';
import 'package:hmbc/page/login.dart';
import 'package:hmbc/page/newsDetail.dart';
import 'package:hmbc/page/setUserInfo.dart';
import 'package:hmbc/user/setting.dart';
import 'package:hmbc/user/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

   int themeColor = 0xFF0198fe;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Color(this.themeColor),
        backgroundColor: Color(0xFFEFEFEF),
        accentColor: Color(0xFF888888),
        textTheme: TextTheme(
          //设置Material的默认字体样式
          body1: TextStyle(color: Color(0xFF888888), fontSize: 16.0),
        ),
        iconTheme: IconThemeData(
          opacity: 0.8,
          color: Color(this.themeColor),
          size: 24.0,
        ),
      ),
      title: '健康管理专家',
      
      home: Container(
          child:Login()
      ),
      routes:{
        '/main':(BuildContext context) => new MainPage(),
        '/index':(BuildContext context) => new IndexPage(),
        '/home':(BuildContext context) => Home(),
        '/user':(BuildContext context) => User(),
        '/login':(BuildContext context) =>Login(),
        '/newsDetail':(BuildContext context) =>NewsDetail(),
        '/webHTML':(BuildContext context) =>WebViewPage(),
        '/insure':(BuildContext context) =>InsureHistory(),
        '/setUserPage':(BuildContext context) =>SetUserPage(),
        '/insureance':(BuildContext context) =>Insurance(),
        '/addRecord':(BuildContext context) =>AddRecord(),
        '/goodsList':(BuildContext context) =>GoodsList(),
        '/goodsDetail':(BuildContext context) =>GoodsDetail(),
        '/setting':(BuildContext context) =>SettingPage(),
        }
    );
  }
}
