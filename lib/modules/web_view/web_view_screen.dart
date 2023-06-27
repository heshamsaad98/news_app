import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
   const WebViewScreen(this.url, {Key? key}) : super(key: key);

   final String url;

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
   late final WebViewController controller;

   @override
   void initState() {
     super.initState();
     controller = WebViewController()
       ..loadRequest(
         Uri.parse(widget.url),
       );
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
