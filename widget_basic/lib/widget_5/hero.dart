// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => HeroDetailPage()),
//             );
//           },
//           child: Hero(
//               tag: 'image',
//               child: Image.asset(
//                 'assets/mylogo.png',
//                 width: 100,
//                 height: 100,
//               )),
//         ),
//       ),
//     );
//   }
// }

// class HeroDetailPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hero detail'),
//       ),
//       body: Hero(tag: 'image', child: Image.asset('assets/mylogo.png')),
//     );
//   }
// }

