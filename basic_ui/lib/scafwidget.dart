import 'package:flutter/material.dart';

class ScafWidget extends StatelessWidget {
  const ScafWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("MISA"),
          actions: const [Icon(Icons.people)],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Colors.blueAccent,
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "category"),
            BottomNavigationBarItem(
                icon: Icon(Icons.support), label: "support"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "person")
          ],
        ),
      ),
    );
  }
}
