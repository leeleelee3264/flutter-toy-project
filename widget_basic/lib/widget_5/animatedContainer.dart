// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var _size = 100.0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           GestureDetector(
//             onTap: () {
//               final random = Random();
//               setState(() {
//                 _size = random.nextInt(200).toDouble() + 100;
//               });
//             },
//             child: AnimatedContainer(
//               duration: Duration(seconds: 1),
//               width: _size,
//               height: _size,
//               child: Image.asset('assets/mylogo.png'),
//               curve: Curves.fastOutSlowIn,
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }