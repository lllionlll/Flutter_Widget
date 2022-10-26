import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool can = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoSwitch(
          value: can,
          onChanged: (value) {
            setState(() {
              can = !can;
            });
          },
        ),
      ),
    );
  }
}
