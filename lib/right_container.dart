import 'dart:html';
import 'package:flutter_web/material.dart';
import 'data.dart';

class RightContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    double _height = MediaQuery.of(context).size.height;
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: _height * 0.7,
            width: 600.0,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context,index){
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(data[index].name + '  ' + data[index].mobile)
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}