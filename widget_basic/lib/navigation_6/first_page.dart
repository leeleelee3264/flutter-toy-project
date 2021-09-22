import 'package:flutter/material.dart';
import 'package:widget_basic/navigation_6/person.dart';
import 'package:widget_basic/navigation_6/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('FirstPage build');

    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: ElevatedButton(
        child: Text('Next page'),
        onPressed: () async {
          final result = Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );

          print(result);
        },
      ),
    );
  }
}
