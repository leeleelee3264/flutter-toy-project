// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

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
//           ),
//           SliverFillRemaining(
//             child: Center(
//               child: Text('center'),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }