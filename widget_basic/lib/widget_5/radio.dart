// 좀 이상하다 
// class _MyHomePageState extends State<MyHomePage> {
//   Gender _gender = Gender.MAN;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           ListTile(
//             title: Text('Man'),
//             leading: Radio<Gender>(
//               value: Gender.MAN,
//               groupValue: _gender,
//               onChanged: (val) => setState(() => _gender = val!),
//             ),
//           ),
//           ListTile(
//             title: Text('Woman'),
//             leading: Radio<Gender>(
//               value: Gender.MAN,
//               groupValue: _gender,
//               onChanged: (val) => setState(() => _gender = val!),
//             ),
//           ),
//           SizedBox(
//             height: 40,
//           ),
//           RadioListTile<Gender>(
//             title: Text('Man'),
//             value: Gender.MAN,
//             groupValue: _gender,
//             onChanged: (val) => setState(() => _gender = val!),
//           ),
//           RadioListTile<Gender>(
//             title: Text('Woman'),
//             value: Gender.MAN,
//             groupValue: _gender,
//             onChanged: (val) => setState(() => _gender = val!),
//           ),
//         ],
//       ),
//     ));
//   }
// }
