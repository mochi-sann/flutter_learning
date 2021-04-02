import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  String name;

  @override
  Widget build(BuildContext context) {
    print(name);
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter大学'),
      ),
      body: Center(
          // color: Colors.red,
          child: Text(name)),
    );
  }
}
