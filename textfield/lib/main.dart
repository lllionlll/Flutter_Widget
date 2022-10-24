import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool can = false;

  void set() {
    setState(() {
      can = !can;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.green[50]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                  ),
                  //labelText: "Name",
                  hintText: "Enter your Name",
                  
                ),
                controller: passwordController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    //labelText: "Password",
                    hintText: "Enter your password",
                    suffixIcon: IconButton(
                        icon:
                            Icon(can ? Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          set();
                        })),
                obscureText: can,
                controller: passwordController,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("INFO"),
                          content: Text(
                              "Name : ${nameController.text}\nPassword: ${passwordController.text}"),
                        );
                      });
                },
                child: Text(
                  "SHOW DIALOG",
                ),
                style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(17),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
