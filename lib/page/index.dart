import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmbc/page/Insurance.dart';
import 'package:hmbc/page/goodsList.dart';
import 'package:hmbc/page/indexPage.dart';
import 'package:hmbc/page/insure.dart';
import 'package:hmbc/user/setting.dart';
class MainPage extends StatefulWidget {
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
    String appBarTitle;
    int _currentIndex = 0;
    List<Widget>_listPage=new List();
    List<BottomNavigationBarItem> _myTabs = [];
    List tabData = [
    {'text': '首页', 'icon': Icon(Icons.home)},
    {'text': '养生有道', 'icon': Icon(Icons.import_contacts)},
    {'text': '健康达人', 'icon': Icon(Icons.account_circle)},
     {'text': '个人中心', 'icon': Icon(Icons.account_circle)},
    //https://flutter-go.pub/api/isInfoOpen
  ];
  
 @override
  void initState(){
       super.initState();
       _listPage
        ..add(IndexPage());
        appBarTitle = tabData[0]['text'];
        initTabData(tabData);
        initPage();

  }

 @override
  void dispose() {
    super.dispose();
  }


 void initTabData(List tabData){
     for (int i = 0; i < tabData.length; i++) {
      _myTabs.add(BottomNavigationBarItem(
        icon: tabData[i]['icon'],
        title: Text(
          tabData[i]['text'],
        ),
      ));
    }
  }

void initPage()
{
   _listPage
      ..add(GoodsList())
      ..add(Insurance())
      ..add(SettingPage());

} 

  void _itemTapped(int index) {
        setState(() {
          _currentIndex = index;
          appBarTitle = tabData[index]['text'];
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:IndexedStack(
          index:_currentIndex,
          children:_listPage,
        ),
        bottomNavigationBar: BottomNavigationBar(
        items: _myTabs,
        //高亮  被点击高亮
        currentIndex: _currentIndex,
        //修改 页面
        onTap: _itemTapped,
        //shifting :按钮点击移动效果
        //fixed：固定
        type: BottomNavigationBarType.fixed,
        fixedColor: Theme.of(context).primaryColor,
      ),
        );
  }
}
