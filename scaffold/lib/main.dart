import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        elevation: 0,
        title: Text("Scaffold"),
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.image)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: Scaffold(
        backgroundColor: Color.fromARGB(255, 58, 164, 212),
      ),
      floatingActionButton: IconButton(onPressed: () {}, icon: Icon(Icons.add, color: Colors.black,)),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                
              ),
              child: Text(
                'Welcome to Javatpoint',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text("Menu"),
            ),
            ListTile(
              title: Text("All Mail Inboxes"),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text("Primary"),
            ),
            ListTile(
              title: Text("Social"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
          ],
        ),
      ),
    );
  }
}
