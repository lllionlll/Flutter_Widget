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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 200),
        padding: EdgeInsets.symmetric(horizontal: 80),
        width: double.infinity,
        height: 300,
        child: ClipRRect(  
          borderRadius: BorderRadius.circular(20),
          child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg", fit: BoxFit.cover,),
        ),
      )
    );
  }
}
