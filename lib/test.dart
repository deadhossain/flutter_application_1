import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

int number = 0;

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueAccent,
          body: Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    print(++number);
                  });
                },
                child: Container(
                  child: Text(
                    number.toString(),
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(color: Colors.amberAccent),
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  height: 200.0,
                ),
              ),
            ],
          )),
    );
  }
}
