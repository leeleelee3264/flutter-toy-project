// class _MyHomePageState extends State<MyHomePage> {
//   String? _selectedTime;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Future<TimeOfDay?> selectedTime =
//                 showTimePicker(context: context, initialTime: TimeOfDay.now());

//             selectedTime.then((value) {
//               setState(() {
//                 _selectedTime = '${value!.hour}:${value.minute}';
//               });
//             });
//           },
//           child: Text('Time picker'),
//         ),
//       ),
//     );
//   }
// }
