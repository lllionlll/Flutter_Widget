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
  TextEditingController _txt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        title: Text("Alert Dialog"),
        content: Container(
          height: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("This is contents"),
              TextField(
                controller: _txt,
                decoration: InputDecoration(hintText: "Enter your text!"),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                showDialog(
                  context: context, 
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Text"),
                      content: Text("${_txt.text}"),
                    );
                  }
                );
              },
              child: Text("YES")),
          TextButton(onPressed: () {}, child: Text("NO")),
        ],
      ),
    );
  }
}
