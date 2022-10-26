import 'package:flutter/material.dart';
import 'package:tabbar/screen1.dart';
import 'package:tabbar/screen2.dart';

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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 0,
            bottomOpacity: 1,
            backgroundColor: Colors.white,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ), 
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                ), 
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ), 
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          body: Container(
            color: Colors.greenAccent,
            child: SizedBox(
              child: TabBarView(
                children: [Screen1(), Screen2(), Screen1(), Screen2()],
              ),
            ),
          )),
    );
  }
}
