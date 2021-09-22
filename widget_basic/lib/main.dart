import 'package:flutter/material.dart';


import 'complicated_7/page1.dart';
import 'complicated_7/page2.dart';
import 'complicated_7/page3.dart';


final dummyItems = [
  'https://images.chosun.com/resizer/PmYiWc8OT-KQPhsVCc_LHD05yvo=/650x398/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/KSFMXX3PKR52HMPBVTVIKTRLYM.jpg', 
  'https://images.chosun.com/resizer/wydHH7fOmZZmFC6kjWlJPq1OT9I=/616x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/5SYL2OLE5P53YIYUAI5LGY2XEQ.jpg',
  'https://cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/LKVNDFMAZJHLBCIA2DAJURRB3E.jpg', 
]; 

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
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;
  var _pages = [Page1(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Complicated UI',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'service',
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            label: 'info',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}

