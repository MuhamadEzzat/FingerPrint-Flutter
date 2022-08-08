import 'package:flutter/material.dart';
import 'package:finger_print_fetch_example/ui/finger_check_page.dart';
import 'package:finger_print_fetch_example/ui/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/finger_check_page",
      routes: {
        '/finger_check_page': (context) => const CheckFingerPage(),
        '/second_page' : (context) => const SecondPage()
      }
    );
  }
}
