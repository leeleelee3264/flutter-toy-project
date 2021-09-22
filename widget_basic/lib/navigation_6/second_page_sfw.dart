import 'package:flutter/material.dart';

class SecondStatefulPage extends StatefulWidget {
  SecondStatefulPage({Key? key}) : super(key: key);

  @override
  _SecondStatefulPageeState createState() => _SecondStatefulPageeState();
}

class _SecondStatefulPageeState extends State<SecondStatefulPage> {
  @override
  void initState() {
    super.initState();
    print('SecondPage initState()');
  }

  @override
  void dispose() {
    super.dispose();
    print('SecondPage dispose()');
  }

  @override
  Widget build(BuildContext context) {
    print('SecondPage build ss');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: ElevatedButton(
        child: Text('Previous page'),
        onPressed: () {
          Navigator.pop(context, 'OK');
        },
      ),
    );
  }
}
