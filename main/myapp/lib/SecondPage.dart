import 'package:flutter/material.dart';
import 'package:myapp/FirstPage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to the first page when the button is pressed.
            Navigator.pop(context);
          },
          child: Text('Go back to First Page'),
        ),
      ),
    );
  }
}
