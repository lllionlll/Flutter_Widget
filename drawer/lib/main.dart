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
      drawer: Drawer(  
        child: ListView(  
          padding: EdgeInsets.zero,  
          children: <Widget>[
            UserAccountsDrawerHeader(  
              accountName: Text("Nguyen Lam"),  
              accountEmail: Text("lam14.dev@gmail.com"),  
              currentAccountPicture: CircleAvatar(  
                backgroundColor: Colors.black,  
                child: Text(  
                  "L",  
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),  
              ),  
            ),  
            ListTile(  
              leading: Icon(Icons.home), title: Text("Home"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.settings), title: Text("Settings"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.contacts), title: Text("Contact Us"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
          ],  
        ),  
      ), 
    );
  }
}
