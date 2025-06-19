

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'front_end/screens/matches/matches.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(onNotification: (notification) {
      notification.disallowIndicator();
      return true;
    },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Matches(),
      ),
    );
  }
}


// class GradientCard extends StatelessWidget {
//   const GradientCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(30),
//         child: Stack(
//           children: [
//             // Gradient background with blur
//             Container(
//               width: 300,
//               height: 400,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: [
//                     Color(0xFF00FFAB), // greenish
//                     Color(0xFF8A00FF), // purple
//                     Color(0xFF000000), // fallback dark
//                   ],
//                 ),
//               ),
//               child: BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
//                 child: Container(
//                   color: Colors.black.withOpacity(0.2),
//                 ),
//               ),
//             ),
//
//             // Black gradient overlay (bottom fade effect)
//             Container(
//               width: 300,
//               height: 400,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.center,
//                   end: Alignment.bottomCenter,
//                   colors: [
//                     Colors.transparent,
//                     Colors.black87,
//                   ],
//                 ),
//               ),
//             ),
//
//             // Text content
//             Positioned.fill(
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const SizedBox(),
//                     const Center(
//                       child: Text(
//                         'Tap to answer',
//                         style: TextStyle(
//                           color: Colors.white70,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                     Column(
//                       children: const [
//                         Text(
//                           'Amanda, 22',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                         SizedBox(height: 4),
//                         Text(
//                           'What is your most favorite\nchildhood memory?',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.white70,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
