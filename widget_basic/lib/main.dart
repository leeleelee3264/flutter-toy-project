import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text('cupertino design'),
        ),
        body: Column(
          children: [
            CupertinoSwitch(
              onChanged: (bool value) {
                setState(() {
                  _isOn = true;
                });
              },
              value: _isOn,
            ),
            CupertinoButton(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.orange,
              child: Text('cupertino dialog'),
              onPressed: () {
                _showCupertinoDialog();
              },
            ),
            CupertinoButton(
                child: Text('cupertino picker'),
                onPressed: () {
                  _showCupertinoPicker();
                })
          ],
        ));
  }

  _showCupertinoDialog() {
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text('title'),
        content: Text('content'),
        actions: [
          CupertinoDialogAction(child: Text('Cancel')),
          CupertinoDialogAction(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ],
      ),
    );
  }

  _showCupertinoPicker() async {
    final _items = List.generate(10, (index) => index);
    var result = _items[0];

    await showCupertinoModalPopup(
        context: context,
        builder: (context) => Container(
              height: 200.0,
              child: CupertinoPicker(
                children: _items.map((e) => Text('NO.$e')).toList(),
                itemExtent: 50.0,
                onSelectedItemChanged: (int value) {
                  result = _items[value];
                },
              ),
            ));
    print(result);
  }
}
