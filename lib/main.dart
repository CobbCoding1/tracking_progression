import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonText = "Click";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // AppBar
        appBar: AppBar(
          title: const Text("Hello"),
        ),
        // Body
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                buttonText = "Clicked";
              });
            },
            child: Text(buttonText),
          ),
        ),
        // Bottom NavBar
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
