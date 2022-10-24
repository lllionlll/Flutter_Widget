import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // child: Text(
          //   "Example about text widget",
          //   style: TextStyle(
          //     fontSize: 20,
          //     color: Colors.red,
          //     backgroundColor: Colors.yellow,
          //     fontStyle: FontStyle.italic,
          //     wordSpacing: 5,
          //     letterSpacing: 1,shadows: [
          //       Shadow(
          //         color: Colors.green,
          //         offset: Offset(2, 1),
          //         blurRadius: 1
          //       )
          //     ]
          //   ),
        child: Center(
        child: RichText(
          text: TextSpan(
              text: 'Don\'t have an account?',
              style: TextStyle(color: Colors.black, fontSize: 20),
              children: [
                TextSpan(
                    text: ' Sign up',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("123");
                      }),
              WidgetSpan(  
                    child: Padding(  
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),  
                      child: Icon(Icons.brightness_3, color: Colors.red),  
                    ),  
                  ),
                
              ]),
        ),
      )),
    );
  }
}
