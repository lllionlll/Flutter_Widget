import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100, 
        height: 100,
        alignment: Alignment.centerLeft,
        child: Text("***"),
        margin: EdgeInsets.only(top: 100, left: 100), 
        padding: EdgeInsets.only(left: 20, top: 20),
        transform: Matrix4.rotationZ(0.1),
        // color + decoration => error
        decoration: BoxDecoration(  
            border: Border.all(color: Colors.black, width: 4),  
            borderRadius: BorderRadius.circular(8),  
            boxShadow: [  
              new BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),), 
            ],  
          ),
      ),
      
    );
  }
}
