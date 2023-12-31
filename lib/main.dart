// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FirstScreen(),
//     );
//   }
// }

// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => SecondScreen(),
//               ),
//             );
//           },
//           child: Text('Go to Second Screen'),
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context); // Go back to the previous screen
//           },
//           child: Text('Back to First Screen'),
//         ),
//       ),
//     );
//   }
// }



// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'pages/signup_page.dart';
import 'pages/login_page.dart';

import "package:go_router/go_router.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //route configuration
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'signup',
            builder: (BuildContext context, GoRouterState state) {
              return const RegistrationApp();
            },
          ),
        ],
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      title: 'Login App',
    );
  }
}