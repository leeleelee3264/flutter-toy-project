import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('SecondPage build');
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
