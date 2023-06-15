import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: Text("မေဆိုရှယ်"),
          actions: [Icon(Icons.settings)],
          centerTitle: false,
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 50),
            child: Text("This is bottom"),
          ),
        ),
        // body: Center(
        //   // child: Text("This is Body Widget"),

        // ),
        body: Row(
          children: [
            Column(
              children: [
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return Colors.blue.withOpacity(0.04);
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed))
                          return Colors.blue.withOpacity(0.12);
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Text"),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Elevated")),
                OutlinedButton(onPressed: () {}, child: Text("Outline"))
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Flat Button"),
                style: TextButton.styleFrom(
                  primary: Colors.orange,
                  backgroundColor: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
            ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.ios_share_outlined),
                style: TextButton.styleFrom(
                    primary: Colors.deepOrange,
                    side: BorderSide(color: Colors.green),
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    // padding: const EdgeInsets.symmetric(
                    //     vertical: 20.0, horizontal: 30.0),
                    padding: EdgeInsets.all(50.0)))
          ],
        ),
      ),
    );
  }
}
