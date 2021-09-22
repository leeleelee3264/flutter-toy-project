// class _MyHomePageState extends State<MyHomePage> {
//   final _valueList = ['first', 'second', 'third'];
//   String? _selectedValue = 'first';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               showMyDialog(context);
//             },
//             child: Text('Click')),
//       ),
//     );
//   }
// }

// void showMyDialog(BuildContext context) {
//   showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('title'),
//           content: SingleChildScrollView(
//             child: ListBody(
//               children: [
//                 Text('This is Alert Dialog'),
//                 Text('Press Ok to close'),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text('OK')),
//             TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text('Cancel')),
//           ],
//         );
//       });
// }