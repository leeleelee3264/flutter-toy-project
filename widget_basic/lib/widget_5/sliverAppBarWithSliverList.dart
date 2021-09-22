// class MyHomePage extends StatelessWidget {
//   final _items = List.generate(
//       50,
//       (index) => ListTile(
//             title: Text('NO.$index'),
//           ));

//   MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             pinned: true,
//             expandedHeight: 180.0,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text('sliver'),
//               background: Image.asset(
//                 'assets/mylogo.png',
//                 fit: BoxFit.cover,
//               ),
//             ),
//             actions: [
//               IconButton(
//                   onPressed: () {}, icon: Image.asset('assets/mylogo.png')),
//             ],
//           ),
//           SliverList(
//             delegate: SliverChildListDelegate(_items),
//           ),
//         ],
//       ),
//     );
//   }
// }