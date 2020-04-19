import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
class SettingPage extends StatefulWidget{

  SetPageState createState()=>SetPageState();

}



class SetPageState extends State<SettingPage>{


 Widget createItem(String title,String iconName,String routName){
   String newRouter="/"+routName;
    return Column(
      children:[
        GestureDetector(
          onTap:(){
            print('${routName}');
            if(routName=='share')
            {
                Share.share('heck out my websitec https://healthidc.com');
            }else{
 Navigator.pushNamed(context,newRouter);
            }
           
          },
          child: Container(
          padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Row(
                        children:[
                          Icon(Icons.person_pin),
                      Text(title),
                        ]
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ]
                  ),
         ),
        ),
       Divider(),
      ]
    );
  }


  Widget build(BuildContext context){
    return Scaffold(
          body:Container(
            color: Colors.white,
          child:ListView(

            children:[Column(
              children: <Widget>[
                Container(
                      child:Image.network('https://hbimg.huabanimg.com/a99a617467386af9052b8d811f38a13b5de4a57837995-17wX1u_fw658'),
                ),
              Divider(),
             
              createItem('健康报告', 'report','setUserPage'),
              createItem('反馈建议', 'feedBack','feedBack'),
              createItem('分享/收藏', 'share','share'),
              createItem('登录', 'login','login')
              

              ],


          ),]
          )




    ) 
    );



  }


}