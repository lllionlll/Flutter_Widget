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
  List<String> images = [
    "https://user.oc-static.com/files/6001_7000/6410.jpg",
    "https://user.oc-static.com/files/6001_7000/6410.jpg",
    "https://user.oc-static.com/files/6001_7000/6410.jpg",
    "https://user.oc-static.com/files/6001_7000/6410.jpg", 
    "https://user.oc-static.com/files/6001_7000/6410.jpg",
    "https://user.oc-static.com/files/6001_7000/6410.jpg",
    "https://user.oc-static.com/files/6001_7000/6410.jpg",
    "https://user.oc-static.com/files/6001_7000/6410.jpg"
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 1.25
              ),
          itemBuilder: (context, index) {
            return Image.network(images[index]);
          },
        ),
      ),
    );
  }
}
