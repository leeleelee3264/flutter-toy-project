// class _MyHomePageState extends State<MyHomePage> {
//   final myController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     myController.addListener(_printLatesValue);
//     print('act init');
//   }

//   void _printLatesValue() {
//     print('Second Text field: ${myController.text}');
//   }

//   @override
//   void dispose() {
//     myController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text input prac'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: <Widget>[
//             TextField(
//               onChanged: (text) {
//                 print('Frist text field :${text}');
//               },
//             ),
//             TextField(
//               controller: myController,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
