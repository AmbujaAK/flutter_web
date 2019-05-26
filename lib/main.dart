import 'package:flutter_web/material.dart';
import 'package:flutter_web_demo/left_container.dart';
import 'package:flutter_web_demo/right_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Web Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: LeftContainer(),
          ),
          Expanded(
            flex: 1,
            child: RightContainer(),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
