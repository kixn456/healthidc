import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  UserState createState() => UserState();
}

class UserState extends State<User> {
  List<Widget> NewsList() {
    List<Widget> newList = new List();
    for (var i = 0; i < 20; i++) {
      News newsItem = new News(
          title: '健身器械的分类功能介绍',
          date: '2020-02-05',
          imgpath:
              'http://img.keeprun.cn/upload/20160725/6360505517340200001764759.jpg');

      Widget item = NewsItem(newsItem);
      newList.add(item);
    }
    return newList;
  }

  Widget NewsItem(News item) {
    return Card(
        //z轴的高度，设置card的阴影
        elevation: 3.0,
        //设置shape，这里设置成了R角
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
        child: GestureDetector(
          onTapDown: (detail) {
            Navigator.pushNamed(context, '/newsDetail');
          },
          child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(item.title, style: TextStyle(fontSize: 18)),
                      Text(
                        item.date,
                        style: TextStyle(fontSize: 12),
                      ),
                    ])),
                Image.network(
                  item.imgpath,
                  width: 100,
                )
              ])),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        elevation: 0,
        //backgroundColor:Colors.transparent,
        centerTitle: true,
        leading:GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        title: Text(
          '健康推荐',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.share,
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.fromLTRB(0, 30, 20, 40),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage('asset/images/head.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Block-12345678'),
                                Text('2019年你因生病支出合计'),
                                Text(
                                  '5825.00',
                                  style: TextStyle(
                                    fontSize: 30.0, //字体大小
                                    fontWeight: FontWeight.w900, //字体粗细  粗体和正常
                                    color: Colors.redAccent, //文字颜色
                                  ),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.ideographic,
                  children: <Widget>[
                    Container(
                        width: 120,
                        height: 50,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(5),
                        color: Colors.blueAccent,
                        child: Text(
                          '健康运动',
                          style: TextStyle(color: Colors.white),
                        )),
                    Container(
                        width: 120,
                        height: 50,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(5),
                        color: Colors.green,
                        child: Text(
                          '快乐养生',
                          style: TextStyle(color: Colors.white),
                        )),
                    Container(
                        width: 120,
                        height: 50,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(5),
                        color: Colors.deepPurpleAccent,
                        child: Text(
                          '定期体检',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: NewsList(),
          )
        ],
      ),
    ));
  }
}

class News {
  News({Key key, this.title, this.date, this.imgpath});
  String title;
  String date;
  String imgpath;
  int count;
}
