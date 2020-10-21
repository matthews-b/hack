import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zest Blog"),
      ),

      body: WebView(
          key: UniqueKey(),
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "http://ec2-18-222-59-16.us-east-2.compute.amazonaws.com:3000/map",
      )
      
    );
  }
}
