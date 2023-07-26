import 'dart:ffi';

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
  int navIndex = 0;

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
          child: navIndex == 0
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.blueGrey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.blue),
                        onPressed: () {
                          setState(
                            () {
                              buttonText = "Clicked";
                            },
                          );
                        },
                        child: Text(
                          buttonText,
                        ),
                      ),
                      const Text(
                        "Click the button!",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
                )
              : Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Welcome to settings!"),
                      ElevatedButton(
                        onPressed: () {
                          print("Settings changed!");
                        },
                        child: const Text("Click to change settings"),
                      ),
                      Image.network(
                          'https://i.etsystatic.com/21042145/r/il/d64455/4200288913/il_fullxfull.4200288913_69e2.jpg'),
                    ],
                  )),
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
          currentIndex: navIndex,
          onTap: (int index) {
            setState(() {
              navIndex = index;
            });
          },
        ),
      ),
    );
  }
}
