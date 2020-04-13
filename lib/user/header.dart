import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  HeaderState createState() => HeaderState();
}

class HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.white,
          child: Center(
                child:Column(
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
                      )
                    )
                    ],


                ),

          ),

    );
  }
}
