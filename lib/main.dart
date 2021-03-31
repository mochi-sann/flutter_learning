import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'asdsadsdPage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    print(_counter);
    setState(() {
      // _counter++;
      if (_counter == 0) {
        _counter = 1;
      } else {
        _counter = _counter * 2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter大学'),
        actions: [
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Center(
        child: Padding(
          child: Column(
            children: [
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("こんにちは私は須藤です"),
                  Text(
                    'KBOYさんの説明はとてもわかりやすい',
                  ),
                  Text(
                    '↑わかる',
                  ),
                  Text(
                    '↑しかもかっこよい',
                  ),
                  // Image.asset('img/img.png'),
                  Image.network(
                      'https://images.unsplash.com/photo-1616953050510-9a7a5923cb52?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                ],
              ),
            ],
          ),
          padding: const EdgeInsets.all(8.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
