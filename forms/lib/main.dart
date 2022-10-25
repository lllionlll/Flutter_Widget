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
  final _formKeyName = GlobalKey<FormState>();
  final _formKeyPass = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 85,
              margin: EdgeInsets.only(top: 100),
              child: Form(
                  key: _formKeyName,
                  child: TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          icon: const Icon(Icons.person),
                          hintText: 'Enter your full name',
                          labelText: 'Name',
                          border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _formKeyName.currentState!.validate();
                      })),
            ),
            Container(
              height: 85,
              margin: EdgeInsets.only(top: 20),
              child: Form(
                  key: _formKeyPass,
                  child: TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                          icon: const Icon(Icons.key),
                          hintText: 'Enter your Phone number',
                          labelText: 'Phone',
                          border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _formKeyPass.currentState!.validate();
                      })),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Center(
                child: ElevatedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    nameController.text = "";
                    passwordController.text = "";
                    _formKeyName.currentState!.validate();
                    _formKeyPass.currentState!.validate();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
