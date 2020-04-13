import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsDetail extends StatefulWidget{

  NewsDetailState createState()=>NewsDetailState();

}


class NewsDetailState extends State<NewsDetail>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.white,
          appBar: AppBar(
            title:Text('保键魔兽世界'),
            centerTitle:true
          ),
          body: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                  children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child:Text('芒种养生 老中医推荐最养生的“五菜三茶”',
                            style: TextStyle(
                              fontSize: 24,
                            ), 
                        )
                      ),
                      Container(
                        child: Text( '2020-02-25阅读 50',
                        style: TextStyle(
                          fontSize:14
                        ),
                        ),
                      ),
                      Expanded(
                      child:Container(
                        padding: EdgeInsets.all(10),
                        child:RichText(
                             text: TextSpan(
                                 text: '养生首先要清静养神，中医认为杂念多，动而不静，会损害的脏腑，轻则生病，重者减寿。清静养生的首要方法就是减少杂念，降低名利和物质的欲望，要心志平和。七情六欲过度会直接损伤脏腑，怒伤肝、恐伤肾。药补不如食补，食补不如神补，所谓神补就是心志平和，以养五脏。其次是饮食养生，所谓饮食...',
                                style: TextStyle(color: Colors.black, fontSize: 18.0),
                             )
                        )
                      )
                      )
                  ],
              ),
          ),
    );

  }

}