import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to Second Page',
          style: TextStyle(
            fontSize: 30.0
          ),
        ),
      ),
    );
  }
}
