// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

// import 'home.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//   // final String title;
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     // set time to load the new page
//     Future.delayed(Duration(seconds: 5), () {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => HomePage()));
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           alignment: Alignment.center,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 300,
//                 width: 300,
//                 child: Lottie.asset("assets/splashback.json"),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 "LOADING...",
//                 style: TextStyle(
//                     fontSize: 25,
//                     fontFamily: 'LibreBaskerville',
//                     fontWeight: FontWeight.bold),
//               ),
//               // Text(
//               //   "Central College Wattegama",
//               //   style: TextStyle(
//               //       fontSize: 22,
//               //       fontFamily: 'AmaticSC',
//               //       fontWeight: FontWeight.bold,
//               //       letterSpacing: 3),
//               // )
//             ],
//           )),
//     );
//   }
// }
