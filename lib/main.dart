import 'package:flutter/material.dart';

void main() => runApp(const TookaneChallengeApp());

class TookaneChallengeApp extends StatelessWidget {
  const TookaneChallengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
