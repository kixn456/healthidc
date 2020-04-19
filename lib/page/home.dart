import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  String title;
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  PageController _pageController;
  int _index = 0;
  Timer timer;
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _index,
      viewportFraction: 1,
      keepPage: true,
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer = null;
  }

  /**
   * 类型切换
   * 
   */
  void _changeType(int index) {
    print(index);
    this._index = index;
    this.pageViewControl(index);
  }

  /**
   * 创建类类型
   */
  List<Widget> createType() {
    List<Widget> typeList = new List();
    const listType = ['病务', '处方', '检查', '检验', '病理'];

    for (var i = 0; i < listType.length; i++) {
      int index = i;
      Color currentBg = Colors.transparent;
      Color fontColor = Colors.blueAccent;
      if (this._index == i) {
        currentBg = Colors.blueAccent;
        fontColor = Colors.white;
      }

      Widget item = Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              color: currentBg, borderRadius: BorderRadius.circular(5)),
          child: GestureDetector(
              onTap: () {
                this._changeType(index);
              },
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  child: Text(
                    listType[i],
                    style: TextStyle(color: fontColor),
                  ))));
      typeList.add(item);
    }
    return typeList;
  }

  /**
   * 页面动画切换器
   */
  pageViewControl(index) {
    _index = index;

    // timer = Timer.periodic(const Duration(seconds: 2), (_timer) {
    //   _pageController.animateToPage(
    //     _index, //跳转到的位置
    //     duration: Duration(milliseconds: 50), //跳转的间隔时间
    //     curve: Curves.fastLinearToSlowEaseIn, //跳转动画
    //   );
    // });
  }

  /**
   * 创建子页面
   */
  List<Widget> createPageList() {
    List<Widget> widgetList = new List();
    for (var i = 0; i < 1; i++) {
      Widget item = Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          child: Expanded(
              child: Column(children: [
            Image.asset('asset/images/bl_02.jpg'),
            Image.asset('asset/images/bl_03.jpg')
          ])));
      widgetList.add(item);
    }
    return widgetList;
  }

  Widget createHeader() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Column(children: [
        Expanded(
          child: Container(
              child: Row(children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/images/head.png'))),
            ),
            Container(
              child: Text('京诊医院：北京积水潭医院\n就诊时间：2019-11-22\n医师：司马相如\n症状：腹绞痛'),
            ),
          ])),
        ),
        Text('端木有钱花 BLOCK-12345688888888'),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: createType())
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          textTheme: TextTheme(
            headline: TextStyle(fontWeight: FontWeight.bold),
            title: TextStyle(color: Colors.white),
          ),
          title: Text('病历详情'),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          actions: <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            Icon(
              Icons.share,
              color: Colors.white,
            ),
          ],
        ),
        body: Container(
            child: Stack(children: [
          Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 160),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                      child: Column(children: [
                        Container(
                            child: Image.asset(
                          'asset/images/bl_03.jpg',
                          width: 200,
                        )),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Image.asset(
                              'asset/images/bl_07.jpg',
                              width: 200,
                            )),
                      ]))
                ],
              )),
          Container(
            child: Positioned(
                left: 20,
                right: 20,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 15.0), //阴影xy轴偏移量
                              blurRadius: 30.0, //阴影模糊程度
                              spreadRadius: 5.0 //阴影扩散程度
                              )
                        ]),
                    child: createHeader())),
          ),
        ])));
  }
}
