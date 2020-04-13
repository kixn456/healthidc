import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Insurance extends StatefulWidget {
  InsuranceState createState() => InsuranceState();
}

class InsuranceState extends State<Insurance> {
  Widget renderGoods(Goods data) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFFbcbcbc))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(data.title,style: TextStyle(fontSize: 24,color: Color(0xff6f5151),fontWeight: FontWeight.w600)),
          Container(
              child: Row(
                children: [
                  Expanded(
                    child:Container(
                      alignment: Alignment.centerLeft,
                    child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                Text(data.typeDesc),
                Text(data.type),
                Text(data.goodsTitle),
              ],
            )),
                  ),
           Expanded(child: 
            Container(
              alignment: Alignment.bottomRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('${data.realPrice}元/年'),
                Text('${data.price}万',style: TextStyle(
                  fontSize:30,
                  color:Color(0xfff13900),
                  fontWeight: FontWeight.w600
                )),
                RaisedButton(
                  onPressed: (){
                  },
                  color: Colors.blueAccent,
                child:Text('立即购买'),
                )
              ],
            ))
             ),
          ]))
        ],
      ),
    );
  }

  List<Widget> renderGoodsList(int count) {
    List<Widget> goodsList = new List();
    for (var i = 0; i < count; i++) {
      Goods item = Goods(
          title: '尊贵无忧大病医疗保险',
          description: '大病医疗',
          price: 50.00,
          realPrice: 243.00,
          goodsTitle: '平保保险',
          type: '大病',
          typeDesc: '大病医疗法');
      Widget goodsItem = renderGoods(item);
      goodsList.add(goodsItem);
    }

    return goodsList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xfff13900), 
        elevation:0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios,color:Colors.white,),
        title:Text('大病保险',style: TextStyle(color:Colors.white),),
        actions: <Widget>[
            Icon(Icons.favorite,color: Colors.white,),
          Icon(Icons.share,color: Colors.white,),
        
        ],
      ),
      
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Color(0xfff13900),
          ),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFf48d62),
                borderRadius: BorderRadius.circular(20)
                ),
            child: Align(child: Image.asset('asset/images/topBanner.jpg')),
          ),
        ),
        Expanded(child: 
        ListView(
          scrollDirection: Axis.vertical,
          children: this.renderGoodsList(5),
        ),
        
        
        )
      ],
    ));
  }
}

class Goods {
  String title;
  String description;
  double price;
  double realPrice;
  String goodsTitle;
  String type;
  String typeDesc;

  Goods(
      {Key key,
      this.title,
      this.description,
      this.price,
      this.realPrice,
      this.goodsTitle,
      this.type,
      this.typeDesc});
}

