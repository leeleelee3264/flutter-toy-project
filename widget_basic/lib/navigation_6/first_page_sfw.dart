import 'package:flutter/material.dart';
import 'package:widget_basic/navigation_6/second_page_sfw.dart';

class FirstStatefulPage extends StatefulWidget {
  FirstStatefulPage({Key? key}) : super(key: key);

  @override
  _FirstStatefulPageState createState() => _FirstStatefulPageState();
}

class _FirstStatefulPageState extends State<FirstStatefulPage> {
  @override
  void initState() {
    super.initState();
    print("FirstPage initState()");
  }

  @override
  void dispose() {
    super.dispose();
    print('SecondPage dispose()'); 
  }
  

  @override
  Widget build(BuildContext context) {
    print('FirstPage build');

    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: ElevatedButton(
        child: Text('Next page'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondStatefulPage()),
          );
        },
      ),
    );
  }
}
