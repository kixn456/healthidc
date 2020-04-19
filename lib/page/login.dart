import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Login extends StatefulWidget {
  @override
  LoginSate createState() => LoginSate();
}

class LoginSate extends State<Login> {
  int backColor = 0xff0082fe;
  TextEditingController _controller = TextEditingController();
  TextEditingController _passcontroller = TextEditingController();
  FocusNode _emailFocusNode = new FocusNode();
  FocusNode _passwordFocusNode = new FocusNode();
  int phoneValue;
  String smsCode;


  Widget createPhoneInput()
  {

    return  Padding(
              padding: EdgeInsets.only(bottom: 10, top: 10),
              child: TextField(
                focusNode: _emailFocusNode,
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  hintText: "手机号码",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.mobile_screen_share,
                      color: Colors.white),
                ),
                style: TextStyle(fontSize: 16, color: Colors.white),
                onChanged:(text){
                    this.phoneValue=int.parse(text);
                },
              )
            );
  }

Widget createPassInput()
{
      return Padding(
          padding: EdgeInsets.only(bottom: 10, top: 10),
          child: TextField(
            controller: _passcontroller,
            focusNode: _passwordFocusNode,
             onChanged:(text){
               this.smsCode=text;
            },
              obscureText: false, 
            decoration: new InputDecoration(
              border: InputBorder.none,
              hintText: "短信验证码",
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
            ),
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
         
        );
}

Widget createLine()
{
  return   Divider(
            height: 1,
            color: Colors.white30,
          );
}

@override
void checkInputValue(){
  if(this.phoneValue==null || this.smsCode==null)
  {
    print('为空');
       Fluttertoast.showToast(
          msg: '电话号码或验码不能为空',
          timeInSecForIos: 1,
          backgroundColor: Theme.of(context).primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
  }else{
        Navigator.pushNamed(context, '/main');
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(this.backColor),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
                image: DecorationImage(
                    image: AssetImage('asset/images/head.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
                padding: EdgeInsets.all(30),
                child: Column(children: [
                 createLine(),
                  createPhoneInput(),
                  createLine(),
                  createPassInput(),
                 createLine(),
                  GestureDetector(
                      onTap: () {
                       this.checkInputValue();
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(
                            left: 42, right: 42, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Theme.of(context).primaryColor),
                        child: Text(
                          "开启您的健康计划",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ))
                ]))
          ],
        )));
  }
}
