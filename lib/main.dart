

import 'package:flutter/material.dart';
import 'package:hmbc/page/Insurance.dart';
import 'package:hmbc/page/addRecord.dart';
import 'package:hmbc/page/home.dart';
import 'package:hmbc/page/htmlView.dart';
import 'package:hmbc/page/index.dart';
import 'package:hmbc/page/insure.dart';
import 'package:hmbc/page/login.dart';
import 'package:hmbc/page/newsDetail.dart';
import 'package:hmbc/page/setUserInfo.dart';
import 'package:hmbc/user/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '健康管理专家',
      home: Container(
          child:MainPage()
      ),
      routes:{
         '/main':(BuildContext context) => new MainPage(),
        '/index':(BuildContext context) => new MainPage(),
        '/home':(BuildContext context) => Home(),
        '/user':(BuildContext context) => User(),
        '/login':(BuildContext context) =>Login(),
        '/newsDetail':(BuildContext context) =>NewsDetail(),
        '/html':(BuildContext context) =>WebViewPage(),
        '/insure':(BuildContext context) =>Insure(),
        '/setUserPage':(BuildContext context) =>SetUserPage(),
        '/insureance':(BuildContext context) =>Insurance(),
        '/addRecord':(BuildContext context) =>AddRecord()
        }
    );
  }
}
