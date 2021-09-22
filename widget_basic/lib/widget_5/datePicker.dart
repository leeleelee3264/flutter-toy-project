// class _MyHomePageState extends State<MyHomePage> {
//   DateTime selectedDate = DateTime.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               _selectedDate(context);
//             },
//             child: Text('Click')),
//       ),
//     );
//   }

//   _selectedDate(BuildContext context) async {
//     final DateTime? selected = await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(2021),
//       lastDate: DateTime(2999),
//     );

//     if (selected != null && selected != selectedDate)
//       setState(() {
//         selectedDate = selected;
//       });
//   }
// }




// 2번째 방법. 
// 근데 얘가 책에 나온 방법이고 사람들 대부분 위에처럼 await 방법을 썼네 
// class _MyHomePageState extends State<MyHomePage> {
//   DateTime _selectedTime = DateTime.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               Future<DateTime?> selectedDate = showDatePicker(
//                 context: context,
//                 initialDate: DateTime.now(),
//                 firstDate: DateTime(2021),
//                 lastDate: DateTime(2999),
//                 builder: (BuildContext context, Widget? child) {
//                   return Theme(data: ThemeData.dark(), child: child!);
//                 },
//               );

//               selectedDate.then((value) {
//                 setState(() {
//                   _selectedTime = value!;
//                 });
//               });
//             },
//             child: Text('Click')),
//       ),
//     );
//   }
// }
