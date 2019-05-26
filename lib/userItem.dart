import 'package:flutter_web/material.dart';

class UserItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final list = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(15.0),
        shadowColor: Colors.redAccent.shade100,
        color: Colors.redAccent,
        elevation: 5.0,
        child: Container(
          child: Text('data'),
        )
      ),
    );

    return list;
  }

}