import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  IndexPageState createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> {

  List<Widget> createBtnIcon() {
    List<Widget> iconList = new List();
    final List<String> typeList=['体检报告','病历档案','保险商城','上传病历'];
    for (var i = 0; i < 4; i++) {
      String imagePath='asset/images/0${i+1}.png';
      Widget item =GestureDetector(
          onTap:(){
            print('${i}');
                List<String> routerName=['/home','/insure','/user','/addRecord'];
                 Navigator.pushNamed(context, routerName[i]);
          },
          child:  Column(
              children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(bottom:10),
                    height:30,
                    child:Image.asset(imagePath),
                  ),
                  Text(typeList[i])
                ],
            )
      );
      iconList.add(item);
     
    }
     return iconList;
  }

  List<Widget>createListView(){
      List<Widget>listItem=new List();
      int index=0;
      for(var i=0;i<50;i++)
      {
        Widget bannerItem;
        Widget titleItem;
          index++;
          if(i%3==0)
          {
            titleItem=Container(
              padding:EdgeInsets.only(top:10,bottom: 10),
              child:Text('标题${i}',
                style: TextStyle(
                  fontSize: 24
                ),
            )
            );
            listItem.add(titleItem);
          }
          if(index%5==0)
          {   
              bannerItem=Container(
                    height:100,
                    child: Image.network(
                      'http://static1.yst.com.cn/2019/7/26/17/18/40/663/cNABnUZ6Dhqf.jpg',
                      fit: BoxFit.fitWidth,
                      ),
              );
              listItem.add(bannerItem);
          }
          Widget item=GestureDetector(
                  onTap: (){
                    if(index%10==0)
                    {
                       
                        Navigator.pushNamed(context, '/webHTML');
                    }else{ 
                    Navigator.pushNamed(context, "/newsDetail");
                    }
                  },
        
          child:Column(
            children:[
              Container(
            height:80,
            child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children:[
                    Container(
                        width: 100,
                        padding: EdgeInsets.only(right:10),
                        child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1586075703677&di=8d80ba42678a02a59d02908d9b633428&imgtype=0&src=http%3A%2F%2Fp0.meituan.net%2Ftdchotel%2F33cf70c7796ba2677884b7e44d6671f57341300.jpg'),
                    ),
                   Expanded(
                      child:Text(
                        '相传春秋时期，晋公子重耳为逃避迫害而流亡国外，流亡途中，在一处渺无人烟的地方，又累又饿，再也无力站起来。随臣找了半天也找不到一点吃的，正在大家万分焦急的时候，随臣介子推走到僻静处，从自己的大腿上割下了一块肉',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                       
                   ))
                  ]
                )
           ),
          Divider(
            height: 1.0,
            indent: 0.0,
          ),
            ]
          )
          );
            listItem.add(item);
      }


  return listItem;

  }

  Widget createHeader()
  {

    return Container(
              child: Positioned(
                  top: 50,
                  left: 10,
                  right: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:[
                         BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 15.0), //阴影xy轴偏移量
                            blurRadius: 30.0, //阴影模糊程度
                            spreadRadius: 5.0 //阴影扩散程度
                            )
                      ]
                    ),
                    child: Column(children: [
                      Container(
                        height: 140,
                        alignment: Alignment.center,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/images/head.png'))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text('端木有钱花 BLOCK-12345688888888'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:10),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: this.createBtnIcon(),
                      )
                      )
                    ]),
                  )),
            );


  }
   
   

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
          backgroundColor: Colors.lightBlue,
        body: Container(
            child: Stack(
              children: <Widget>[
            Container(
              color:Colors.white,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 240),
              padding: EdgeInsets.only(top: 50, left: 10, right: 10),
              child:ListView(
                  scrollDirection:Axis.vertical,
                  children:createListView(),
              )
            ),
            
            this.createHeader(),
           
          ],
        )
        )
        );
  }
}
