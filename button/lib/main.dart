import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
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
            elevatedbutton(),
            textbutton(), 
            iconbutton()
          ],
        ),
      ),
      floatingActionButton: floatingactionbutton(),
    );
  }
}

class iconbutton extends StatelessWidget {
  const iconbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: IconButton(
        icon: Icon(Icons.sunny, color: Colors.amber, ),
        onPressed: () {},
      ),
    );
  }
}

class textbutton extends StatelessWidget {
  const textbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: TextButton(
        onPressed: () {
          
        },
        child: Text(
          "SHOW DIALOG",
        ),
        style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.green,
            padding: EdgeInsets.all(17),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))), 
        ),
        
      ),
    );
  }
}

class floatingactionbutton extends StatelessWidget {
  const floatingactionbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: FloatingActionButton.extended(
        icon: Icon(Icons.apple),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("INFO"),
                  content: Text("Press"),
                );
              });
        },
        label: Text("Apple"),
      ),
    );
  }
}

class elevatedbutton extends StatelessWidget {
  const elevatedbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200),
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("INFO"),
                  content: Text("Press"),
                );
              });
        },
        onLongPress: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("INFO"),
                  content: Text("Long press"),
                );
              });
        },
        child: Text("1234"),
      ),
    );
  }
}
