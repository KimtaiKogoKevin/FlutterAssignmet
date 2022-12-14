import 'package:flutter/material.dart';
import 'package:flutter_assignment/Screens/multicity.dart';

import 'Screens/authentication/login.dart';
import 'Screens/authentication/register.dart';
import 'Screens/roundtrippage.dart';
import 'Screens/screen2.dart';
import 'Screens/screen3.dart';
import 'Screens/screen4.dart';
import 'Screens/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Screen1(),
      routes: {
        'screen1':(context)=>const Screen1(),
        'screen2': (context) => const Screen2(),
        'screen3': (context) => const Screen3(),
        'screen4': (context) => const Screen4(),
        'roundTripPage':(context) => const RoundTripPage(),
        'multiCityPage':(context)=>const MultiCity(),
        'login':(context)=>const Login(),
        'register':(context)=>const Register(),

      },
    );
  }
}
