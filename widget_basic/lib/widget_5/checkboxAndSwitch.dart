// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var isChked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Checkbox(
//               value: isChked,
//               onChanged: (value) {
//                 setState(() {
//                   isChked = value!;
//                 });
//               }),
//           SizedBox(
//             height: 40,
//           ),
//           Switch(
//               value: isChked,
//               onChanged: (value) {
//                 setState(() {
//                   isChked = value;
//                 });
//               })
//         ],
//       ),
//     ));
//   }
// }