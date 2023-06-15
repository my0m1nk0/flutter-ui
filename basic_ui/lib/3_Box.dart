import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text("Box Decoration")),
          body: Container(
            margin: EdgeInsets.only(top: 15),
            child: DecoratedBox(
              child: Padding(
                  child: Text("Box"),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40)),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.center,
                    colors: [Colors.blue, Colors.red, Colors.green]),
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )),
    );
  }
}
