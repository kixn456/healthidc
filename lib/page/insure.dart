import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Insure extends StatefulWidget {
  String title;
  @override
  InsureState createState() => InsureState();
}

class InsureState extends State<Insure> {
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<Step> createTimeLine() {
    const colorsList = [
      Colors.redAccent,
      Colors.blueAccent,
      Colors.yellowAccent,
      Colors.deepOrange,
      Colors.purpleAccent
    ];

    List<Step> itemList = new List();
    for (var i = 0; i < 20; i++) {
      int index = i % 5;
      DateTime iTime = new DateTime.now();
      Step itemStep = Step(
        title: new Text('${iTime.year}-${iTime.month}-${iTime.day}'),
        content: Container(
          height: 100,
          decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)
          ),
          child: Row(children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text('支出100'),
            ),
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        //color: Colors.blueAccent,
                        gradient: const LinearGradient(
                            colors: [Colors.lightBlue, Colors.blueAccent]),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[Text('data')],
                    ))),
          ]),
        ),
        //subtitle: new Text('viTime'),
      );
      itemList.add(itemStep);
    }

    return itemList;
  }

  Widget createTimeItem() {
    DateTime timeData=DateTime.now();
    String timeInfo='${timeData.year}-${ timeData.month }-${timeData.day}';
    String weekDay=' 星期${timeData.weekday} 你生病了';
    return Container(
        child: Stack(children: [
      Row(children: [
        Container(
            width: 10,
            height: 150,
            margin: EdgeInsets.only(right: 5,top:15),
            child:Column(
              children:[
                Container(
                  width:10,
                  height:10,
                   decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
              ),
                ),
                Expanded(child: 
                VerticalDivider(
                  width: 1,
                  color: Colors.red
                  )
                ),
              ]
            ) 
            ),
        Expanded(
            child: Container(
            child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(),
            child: Padding(
                padding: EdgeInsets.all(5),
                child:RichText(
                      text: TextSpan(
                          text:timeInfo,
                          style: TextStyle(color: Colors.black, fontSize: 24.0),
                          children: [
                            TextSpan(
                              text:weekDay,
                              style: TextStyle(fontSize:14,color: Colors.grey)
                            )
                          ]
                      )
                        )
                )
          ),
          Container(
            height: 110,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text('支出100'),
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          //color: Colors.blueAccent,
                          gradient: const LinearGradient(
                            colors: [Colors.lightBlue, Colors.blueAccent]),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[Text('${DateTime.now()}')],
                      ))),
            ]),
          )
        ])))
      ])
    ]));
  }

  List<Widget> createTimeList() {
    List<Widget> timeList = new List();

    for (var i = 0; i < 10; i++) {
      Widget item = createTimeItem();
      timeList.add(item);
    }

    return timeList;
  }

  /**
   * 创建子页面
   */
  Widget createPageList() {
    // const colorsList = [
    //   Colors.redAccent,
    //   Colors.blueAccent,
    //   Colors.yellowAccent,
    //   Colors.deepOrange,
    //   Colors.purpleAccent
    // ];

    return Stepper(currentStep: 0, steps: createTimeLine());

    //return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          textTheme: TextTheme(
              headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              title: TextStyle(color: Colors.white)),
          title: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "健康管理",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Icon(
                Icons.camera,
                color: Colors.white,
              )
            ],
          ),
        ),
        backgroundColor: Colors.lightBlue,
        body: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Container(
              color:Color.fromRGBO(230, 239, 255,1),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 200),
              padding: EdgeInsets.only(top: 80, left: 20, right: 20),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: createTimeList(),
              ),
            ),
            Container(
              child: Positioned(
                  top: 50,
                  left: 20,
                  right: 20,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(children: [
                      Container(
                        height: 160,
                        alignment: Alignment.center,
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/images/head.png'))),
                        ),
                      ),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('BC132121321321321',
                                    style: TextStyle(
                                      fontSize:14,
                                      color:Color.fromRGBO(175, 175, 175, 1)
                                    ),
                                  ),
                                  Text('2019年度你因生病支出',
                                    style: TextStyle(
                                      fontSize:16,
                                      color:Color.fromRGBO(120, 120, 120, 1)
                                    ),
                                  
                                  ),
                                  Text('5239.00',
                                   style: TextStyle(
                                      fontSize:30,
                                      color:Color.fromRGBO(255, 115, 79, 1)
                                    ),
                                  
                                  ),
                                  Text('注意保持有利于提高免颜色',
                                  style: TextStyle(
                                      fontSize:14,
                                      color:Color.fromRGBO(175, 175, 175, 1)
                                    ),
                                    
                                  ),
                                ],
                              )))
                    ]),
                  )),
            ),
          ],
        ));
  }
}
