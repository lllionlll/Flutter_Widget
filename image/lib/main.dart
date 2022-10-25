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
      body: Center(  
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              width: 100,
              height: 100,
              child: Image.asset("assets/images/bag_1.png"),
            ), 
            Container(
              height: 100,
              margin: EdgeInsets.only(top: 100),
              child: Image.network(
                "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}
