import 'package:flutter/material.dart';

// entry point of application
void main() {
  runApp(HomePage());
}

// widget with a material app
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
// align text inside a container widget
          child: Center(
            child: Text('Руслан Фібрук'),
          ),
        ),
      ),
    );
  }
}
