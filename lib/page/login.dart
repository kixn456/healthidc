
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
    
    @override
   LoginSate createState() => LoginSate();

}

class LoginSate extends State<Login>{

    Widget build(BuildContext context)
    {
      //final size=MediaQuery.of(context).size;
      return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
      body:Center(
            child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                    width: 120,
                    height: 120,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                          image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585421291531&di=664acfa3f7a9f4d07ebde6bf5b2b3559&imgtype=0&src=http%3A%2F%2Fwww.17qq.com%2Fimg_qqtouxiang%2F86660977.jpeg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  TextField(
                   keyboardType: TextInputType.phone,
                      decoration: new InputDecoration(
                        labelText: "手机号",
                        errorText: "",
                        hintText: "请输入你的电话号码",
                        prefixIcon: Icon(Icons.mobile_screen_share),
                      ),
                  ),
                  TextField(
                      decoration: new InputDecoration(
                        labelText: "验证码",
                        errorText: "",
                        hintText: "请输入验证码",
                        prefixIcon: Icon(Icons.lock),
                      ),
                  ),
                  RaisedButton(
                    onPressed: () {
                  
                    },
                    child: new Text('DONE'),
                  )
              ],
            )
      )
      );
    }
 
}

