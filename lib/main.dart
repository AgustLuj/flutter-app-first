import 'package:flutter/material.dart';
import 'package:my_app/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home':(BuildContext context)=> const HomeScreen(),
        'card':(BuildContext context)=> const CardScreen(),
      },
    );
  }
}
