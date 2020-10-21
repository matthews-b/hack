import 'package:flutter/material.dart';
import 'package:hack2k19sbg/models/navigate.dart';
import 'package:hack2k19sbg/pages/home-page.dart';
import 'package:url_launcher/url_launcher.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  _launchURL() async {
    const url = "http://ec2-18-222-59-16.us-east-2.compute.amazonaws.com/gui_blog/hello.html"; 
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _mapURL() async {
    const url = "http://ec2-18-222-59-16.us-east-2.compute.amazonaws.com:3000/map"; 
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Home(),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width:7),
            IconButton(
              icon: Icon(
                Icons.home,
                size: 24.0,
              ),
              color: Colors.blueGrey,
              onPressed: (){
                Navigate nav = Navigate(context, "Home");
                nav.navigate("");
                nav = null;
              },
            ),

            IconButton(
              icon:Icon(
                Icons.library_books,
                size: 24.0,
              ),
              color: Colors.blueGrey,
              onPressed: _launchURL,
            ),

            IconButton(
              icon: Icon(
                Icons.list,
                size: 24.0,
              ),
              color: Colors.blueGrey,
              onPressed: (){

              },
            ),

            IconButton(
              icon: Icon(
                Icons.map,
                size: 24.0,
              ),
              color: Colors.blueGrey,
            onPressed: _mapURL,
            ),

            SizedBox(width:7),
          ],
        ),
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
      ),
    );
  }

}
