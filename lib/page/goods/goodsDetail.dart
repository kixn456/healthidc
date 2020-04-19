import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoodsDetail extends StatefulWidget{

  DetailState createState()=>DetailState();

}



class DetailState extends State<GoodsDetail>{

  Widget build(BuildContext context){

    return  Material(
      child: CustomScrollView(
        slivers: <Widget>[
          //AppBar，包含一个导航栏
          SliverAppBar(
            pinned: true,
            primary:true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              //titlePadding: EdgeInsets.fromLTRB(20, 40, 110, 10),
              centerTitle: true,
              title: const Text('成长快乐多种维生素锌咀嚼片'),
              background: Image.network(
                "http://static1.yst.com.cn/2019/7/26/15/33/53/410/4XR71StjmyI9.jpg", fit: BoxFit.cover,),
            ),
          ),
          
          // SliverPadding(
          //   padding: const EdgeInsets.all(8.0),
          //   sliver: new SliverGrid( //Grid
          //     gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2, //Grid按两列显示
          //       mainAxisSpacing: 10.0,
          //       crossAxisSpacing: 10.0,
          //       childAspectRatio: 4.0,
          //     ),
          //     delegate: new SliverChildBuilderDelegate(
          //           (BuildContext context, int index) {
          //         //创建子widget      
          //         return new Container(
          //           alignment: Alignment.center,
          //           color: Colors.cyan[100 * (index % 9)],
          //           child: new Text('grid item $index'),
          //         );
          //       },
          //       childCount: 20,
          //     ),
          //   ),
          // ),
         //List
          new SliverFixedExtentList(
           itemExtent: 150.0,
            delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  //创建列表项      
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: new Text('list item $index'),
                  );
                },
                childCount: 1 //50个列表项
            ),
          ),
        ],
      ),
    );

  }


}