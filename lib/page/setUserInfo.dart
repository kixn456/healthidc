import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SetUserPage extends StatefulWidget {
  String title;
  @override
  SetUserPageState createState() => SetUserPageState();
}

class SetUserPageState extends State<SetUserPage> {

  var _imgPath;

  void initState() {
    super.initState();
  }
 
  @override
  void dispose() {
    super.dispose();
  }

/*拍照*/
  _takePhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _imgPath = image;
    });
  }

  /*相册*/
  _openGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imgPath = image;
    });
 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
           elevation: 0,
          backgroundColor:Colors.transparent,
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
              margin: EdgeInsets.only(top: 160),
              padding: EdgeInsets.only(top: 80, left: 20, right: 20),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                    Container(
                      child:Row(
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap:(){
                                _takePhoto();
                              },
                              child:Image.asset('asset/images/idback.png')
                            )
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap:(){
                                _openGallery();
                              },
                              child:Image.asset('asset/images/idfront.png')
                            )
                          )
                        ],
                      )
                    )

                ], 
              ),
            ),
            Container(
              child: Positioned(
                  top: 0,
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

