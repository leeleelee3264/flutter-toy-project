// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var _isOn = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: CupertinoNavigationBar(
//           middle: Text('cupertino design'),
//         ),
//         body: Column(
//           children: [
//             CupertinoSwitch(
//               onChanged: (bool value) {
//                 setState(() {
//                   _isOn = true;
//                 });
//               },
//               value: _isOn,
//             ),
//             CupertinoButton(
//               borderRadius: BorderRadius.circular(16.0),
//               color: Colors.orange,
//               child: Text('cupertino dialog'),
//               onPressed: () {
//                 _showCupertinoDialog();
//               },
//             ),
//             CupertinoButton(
//                 child: Text('cupertino picker'),
//                 onPressed: () {
//                   _showCupertinoPicker();
//                 })
//           ],
//         ));
//   }

//   _showCupertinoDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => CupertinoAlertDialog(
//         title: Text('title'),
//         content: Text('content'),
//         actions: [
//           CupertinoDialogAction(child: Text('Cancel')),
//           CupertinoDialogAction(
//               child: Text('OK'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               }),
//         ],
//       ),
//     );
//   }

//   _showCupertinoPicker() async {
//     final _items = List.generate(10, (index) => index);
//     var result = _items[0];

//     await showCupertinoModalPopup(
//         context: context,
//         builder: (context) => Container(
//               height: 200.0,
//               child: CupertinoPicker(
//                 children: _items.map((e) => Text('NO.$e')).toList(),
//                 itemExtent: 50.0,
//                 onSelectedItemChanged: (int value) {
//                   result = _items[value];
//                 },
//               ),
//             ));
//     print(result);
//   }
// }
