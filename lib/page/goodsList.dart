import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoodsList extends StatefulWidget{

    GoodsListState createState() => GoodsListState();

}

class GoodsListState extends State<GoodsList>{

// List<String> getDataList() {
//     List<String> list = [];
//     List<String> imgPath=[
//       'https://img.alicdn.com/tfs/TB1_O_LgSrqK1RjSZK9XXXyypXa-400-400.jpg',
//       'https://gw.alicdn.com/bao/uploaded/i1/1858986601/TB2tMYhbPfguuRjSspaXXaXVXXa_!!1858986601-0-item_pic.jpg'
//       'https://img.alicdn.com/bao/uploaded/i1/TB1F.eqkS3PL1JjSZFtSuwlRVXa.jpg_270x270Q75s50.jpg',
//       'https://img.alicdn.com/bao/uploaded/i1/3257525483/O1CN01xwQE0v1qNGDjR0Y0H_!!0-item_pic.jpg',
//       'https://img.alicdn.com/bao/uploaded/i1/TB1PxOOrbwTMeJjSszfSutbtFXa.jpg_200x200Q75s50.jpg',
//       'https://img.alicdn.com/bao/uploaded/i1/TB1hC9bmamgSKJjSspiSutyJFXa.jpg_200x200Q75s50.jpg',
//       'https://img.alicdn.com/bao/uploaded/i1/TB1EiwOkF9gSKJjSspbSuveNXXa.jpg_200x200Q75s50.jpg',
//       'https://img.alicdn.com/bao/uploaded/i1/TB1ruXfjzihSKJjy0FlSuudEXXa.jpg_200x200Q75s50.jpg'
//      ];
//     for (int i = 0; i < imgPath.length; i++) {
//         list.add(imgPath[i]);
//     }
//     return list;
//   }
//  List<Widget> getWidgetList() {
//     List<String> mapList=getDataList();
//     return mapList.map((item) => getItemContainer(item)).toList();
//   }
final List<String> imgPath=[
      'https://img.alicdn.com/tfs/TB1_O_LgSrqK1RjSZK9XXXyypXa-400-400.jpg',
      'https://gw.alicdn.com/bao/uploaded/i1/1858986601/TB2tMYhbPfguuRjSspaXXaXVXXa_!!1858986601-0-item_pic.jpg'
      'https://img.alicdn.com/bao/uploaded/i1/TB1F.eqkS3PL1JjSZFtSuwlRVXa.jpg_270x270Q75s50.jpg',
      'https://img.alicdn.com/bao/uploaded/i1/3257525483/O1CN01xwQE0v1qNGDjR0Y0H_!!0-item_pic.jpg',
      'https://img.alicdn.com/bao/uploaded/i1/TB1PxOOrbwTMeJjSszfSutbtFXa.jpg_200x200Q75s50.jpg',
      'https://img.alicdn.com/bao/uploaded/i1/TB1hC9bmamgSKJjSspiSutyJFXa.jpg_200x200Q75s50.jpg',
      'https://img.alicdn.com/bao/uploaded/i1/TB1EiwOkF9gSKJjSspbSuveNXXa.jpg_200x200Q75s50.jpg',
      'https://img.alicdn.com/bao/uploaded/i1/TB1ruXfjzihSKJjy0FlSuudEXXa.jpg_200x200Q75s50.jpg'
     ];

Widget getItemContainer(int index) {
    double price=Random().nextInt(1000).toDouble();
    return Container(
      alignment: Alignment.center,
      color: Colors.grey[100],
      child:GestureDetector(
        onTap:(){
            Navigator.pushNamed(context, '/goodsDetail');
        },
        child:Column(
        children: <Widget>[
        Image.network(
          imgPath[index],
        fit:BoxFit.fitWidth,
      ),
      Text('加拿大雅培奶粉2段964g'),
      Text('￥${price}',style: TextStyle(
        fontSize:24,
        color:Colors.redAccent
      ))
      ]),
      )
      
    );
  }

    @override
    Widget build(BuildContext context){
       //List<String> datas = getDataList();
      return Scaffold(
        appBar: AppBar(
        elevation:0,
         //backgroundColor:Colors.transparent,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios,color:Colors.white),
        title:Text('健康推荐',style: TextStyle(color:Colors.white),),
        actions: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child:Icon(Icons.favorite,color: Colors.white,),
              ),
             Icon(Icons.share,color: Colors.white,),
        ],
      ),
          body:Container(
            child:CustomScrollView(
              slivers: [SliverAppBar(
            pinned: true,
            primary:true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              //titlePadding: EdgeInsets.fromLTRB(20, 40, 110, 10),
              centerTitle: true,
              title: const Text('成长快乐多种维生素锌咀嚼片'),
              background: Image.network(
                "http://static1.yst.com.cn/2019/7/26/15/33/53/410/4XR71StjmyI9.jpg", fit: BoxFit.cover),
            ),
          ),
            SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: new SliverGrid( //Grid
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
               // padding: const EdgeInsets.all(10.0),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  //创建子widget      
                  return getItemContainer(index);
                },
                childCount: imgPath.length,
              ),
            ),
          ),
          
          
          ]
          )
            
            // GridView.count(
            //     primary: false,
            //     padding: const EdgeInsets.all(10.0),
            //     mainAxisSpacing: 10.0,
            //     crossAxisSpacing: 10.0,
            //     crossAxisCount: 2,
            //     childAspectRatio: 0.75,
            //     children:getWidgetList()
            // )
        
      )
      );

    }

}
