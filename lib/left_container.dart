import 'dart:html';

import 'package:flutter_web/material.dart';

class LeftContainer extends StatefulWidget {

  @override
  _LeftContainerState createState() => _LeftContainerState();
}

class _LeftContainerState extends State<LeftContainer> {
  TextEditingController name = new TextEditingController();
  TextEditingController mobile = new TextEditingController();

  @override
  Widget build(BuildContext context){
    double _height = MediaQuery.of(context).size.height;    

    final usernameApp = TextFormField(
      autofocus: false,
      controller: name,
      decoration: InputDecoration(
        labelText: 'Name',
        hintText: 'Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      )
    );

    final mobileApp = TextFormField(
      autofocus: false,
      controller: mobile,
      decoration: InputDecoration(
        labelText: 'Mobile',
        hintText: 'Mobile',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      )
    );

    final submitApp =Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(15.0),
        shadowColor: Colors.redAccent.shade100,
        color: Colors.redAccent,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 900.0,
          height: 42.0,
          onPressed: (){},
          child: Text('Submit', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: _height * 0.8,
        width: 600.0,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: usernameApp,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mobileApp,
            ),
            SizedBox(height: 300),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: submitApp,
            )
          ],
        ),
      ),
    );
  }
}