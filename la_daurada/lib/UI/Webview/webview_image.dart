import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewImage extends StatefulWidget {
  var url;
  WebViewImage({this.url});
  @override
  _WebViewImageState createState() => _WebViewImageState();
}

class _WebViewImageState extends State<WebViewImage> {
  var url = "https://www.google.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(url),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
