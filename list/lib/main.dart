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
        margin: EdgeInsets.only(top: 100),
        height: 100,
        color: Colors.green[50],
        child: Center(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              item(), item(), item(), item(), item()
            ],
          ),
        ),
      ),
    );
  }
}

class item extends StatelessWidget {
  const item({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 5),
      color: Colors.green,
      child: ListTile(
        leading: Icon(Icons.apple, color: Colors.white,),
        title: Text("Apple", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
