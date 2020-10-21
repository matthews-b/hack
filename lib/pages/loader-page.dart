import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoaderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoaderPageState();
}

class _LoaderPageState extends State<LoaderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text(''),
        )),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: new AssetImage("assets/zest.png"),
                    alignment: Alignment.center,
                  ),
                  Text("PASSION DRIVEN BANKING"),
                  SpinKitWave(
                    color: Colors.blue,
                    size: 20.0
                  )
                ],
              )
            ],
          ),
        )
      );
  }

}
