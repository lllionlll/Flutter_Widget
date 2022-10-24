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
      home: MyHomePage(),
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
      body: Stack(  
        children: [
          Positioned(
            bottom: 0, 
            left: 0,
            child: Container(  
              width: 50, 
              height: 50,
              color: Colors.red,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Text("text", style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            )
          ), 
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(  
              width: 50, 
              height: 50, 
              color: Colors.green,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Text("text", style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
