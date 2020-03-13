import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Key _refreshIndicatorKey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: LiquidPullToRefresh(
          key: _refreshIndicatorKey,
          backgroundColor: Colors.black,
          color: Colors.white,
          onRefresh: () {}, // refresh callback
          child: ListView(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Hexcolor('#aa4b6b'), Hexcolor('#6b6b83'), Hexcolor('#3b8d99')],)
                ),
                child: Text(
                  'Pull if verified',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ],
          ), // scroll view
        ),
      ),
    );
  }
}
