import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  WebViewController _controller;
  String _title = "webview";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("$_title"),
        ),
        child: SafeArea(
          child: WebView(
            initialUrl: "https://edu.163.com/20/0331/12/F923NNFI0029985J.html",
            //JS执行模式 是否允许JS执行
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) {
              _controller = controller;
            },
            onPageFinished: (url) {
               _controller.evaluateJavascript("document.title").then((result){
                  setState(() {
                    _title = result;
                  });
                }
              );
            },
            navigationDelegate: (NavigationRequest request) {
              if(request.url.startsWith("myapp://")) {
                print("即将打开 ${request.url}");
                
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            } ,
            javascriptChannels: <JavascriptChannel>[
              JavascriptChannel(
                name: "share",
                onMessageReceived: (JavascriptMessage message) {
                  print("参数： ${message.message}");
                }
              ),
            ].toSet(),

          ),
        ),
    );
  }
}