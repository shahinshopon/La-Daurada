import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewSliderImage extends StatefulWidget {
  var url;
  WebViewSliderImage({this.url});
  @override
  _WebViewSliderImageState createState() => _WebViewSliderImageState();
}

class _WebViewSliderImageState extends State<WebViewSliderImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.url}"),
      ),
      body: WebView(
        initialUrl: "${widget.url}",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
