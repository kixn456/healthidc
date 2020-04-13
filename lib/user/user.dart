import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  UserState createState() => UserState();
}

class UserState extends State<User> {



 List<Widget> NewsList() {
    List<Widget> newList=new List();
    for(var i=0;i<5; i++)
    {
      Widget item=NewsItem();
      newList.add(item);
    }
    return newList;
  }


Widget NewsItem()
{
    
    final item=new News(title: 'www',date:'2020-02-05',imgpath: '');
    return Container(
      padding: EdgeInsets.only(
          left: 18,
          right: 18
      ),
      child:Row(
        children:[
          Image(
            width: 100,
            height: 60,
            fit: BoxFit.fitWidth,
            image: NetworkImage(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585421291531&di=664acfa3f7a9f4d07ebde6bf5b2b3559&imgtype=0&src=http%3A%2F%2Fwww.17qq.com%2Fimg_qqtouxiang%2F86660977.jpeg',
              ),
          ),
          Text(item.title),
          Text(item.date),
        ]
      )
    );


}

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 60, 20, 0),
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
                            image: NetworkImage(
                                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585421291531&di=664acfa3f7a9f4d07ebde6bf5b2b3559&imgtype=0&src=http%3A%2F%2Fwww.17qq.com%2Fimg_qqtouxiang%2F86660977.jpeg'),
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
            Column(
              children: NewsList(),
            )
          ],
        ),
      ),
    ));
  }
}


class News{
  News({Key key, this.title, this.date,this.imgpath});
  String title;
  String date;
  String imgpath;
  int count;
}
