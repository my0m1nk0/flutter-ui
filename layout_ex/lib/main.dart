// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text("Herra Shine"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(children: [
            Text(
              "Hera is shining to my heart!",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            _image(),
            _status(),
            _eventTitle(),
            _schedules()
          ]),
        ),
      ),
    );
  }

  _item(String location, String time, String title, Color backColor,
          Color color) =>
      Expanded(
          child: Card(
        color: backColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              location,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: color),
            ),
            Text(
              time,
              style: TextStyle(fontStyle: FontStyle.italic, color: color),
            ),
            Text(
              title,
              style: TextStyle(fontStyle: FontStyle.italic, color: color),
            )
          ],
        ),
      ));

  _schedules() => Expanded(
          child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                _item("Yangon", "7:55 AM", "Starting", Colors.yellow,
                    Colors.black),
                _item("Yangon", "7:55 AM", "Starting", Colors.orange,
                    Colors.white)
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              _item("Yangon", "7:55 AM", "Starting", Colors.deepOrangeAccent,
                  Colors.white),
              _item("Yangon", "7:55 AM", "Starting", Colors.deepOrange,
                  Colors.white)
            ],
          ))
        ],
      ));

  _eventTitle() => const Padding(
        padding: EdgeInsets.only(top: 10, bottom: 15),
        child: Column(
          children: [
            Text(
              "Korea Language",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Learning With hera shine",
              style: TextStyle(color: Colors.green, fontSize: 18),
            )
          ],
        ),
      );

  _status() => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.event),
              SizedBox(
                width: 5,
              ),
              Text(
                "2023/6/10",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star_rate,
                color: Colors.amberAccent,
              ),
              Icon(
                Icons.star_rate,
                color: Colors.amberAccent,
              ),
              Icon(
                Icons.star_rate,
                color: Colors.amberAccent,
              ),
              Icon(
                Icons.star_half,
                color: Colors.amberAccent,
              ),
              Icon(
                Icons.star_outline,
                color: Colors.amberAccent,
              )
            ],
          )
        ],
      );

  _image() => Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Stack(alignment: Alignment.bottomLeft, children: [
        ClipRRect(
          child: Image.asset("images/bg.png"),
          borderRadius: BorderRadius.circular(8),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "BORN",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "COUNT",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ]));
}
