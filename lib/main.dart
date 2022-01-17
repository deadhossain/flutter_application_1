import 'dart:io';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  return runApp(MaterialApp(
    title: "Flutter From Scratch",
    home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
        ),
        body: Center(child: MyApp())),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool storagePermission = false;
  String imagePath = 'assets/images/goku.jpg';
  @override
  Future<void> checkStoragePermission() async {
    if (await Permission.storage.request().isGranted) {
      storagePermission = true;
      setState(() {
        imagePath = '/storage/emulated/0/Download/images.jpeg';
      });
    } else {
      Permission.storage.request();
    }
  }

  Widget build(BuildContext context) {
    return ImageWidget();
  }

  Widget ImageWidget() {
    checkStoragePermission();
    return Container(
      height: 600,
      width: 400,
      color: Colors.grey,
      child: storagePermission ? Image.file(File(imagePath)) : Image.asset(imagePath),
    );
  }
}

class ListBuilderWidgetClass extends StatefulWidget {
  const ListBuilderWidgetClass({Key? key}) : super(key: key);

  @override
  _ListBuilderWidgetClassState createState() => _ListBuilderWidgetClassState();
}

class _ListBuilderWidgetClassState extends State<ListBuilderWidgetClass> {
  List<int> list = [];
  @override
  void initState() {
    // TODO: implement initState
    for (int i = 0; i <= 50; i++) {
      list.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("Title ${list[index]}"),
            trailing: Icon(Icons.remove_red_eye),
            iconColor: Colors.blue,
            subtitle: Text("subtitle ${list[index]}"),
            tileColor: Colors.lightGreenAccent,
            textColor: Colors.purple,
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueGrey,
              ),
            ),
          );
        });
  }
}

class ListWidgetClass extends StatefulWidget {
  const ListWidgetClass({Key? key}) : super(key: key);

  @override
  _ListWidgetClassState createState() => _ListWidgetClassState();
}

class _ListWidgetClassState extends State<ListWidgetClass>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Title 1"),
          trailing: Icon(Icons.remove_red_eye),
          iconColor: Colors.blue,
          subtitle: Text("subtitle 1"),
          tileColor: Colors.lightGreenAccent,
          textColor: Colors.purple,
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey,
            ),
          ),
        ),
        ListTile(
          title: Text("Title 2"),
          trailing: Icon(Icons.remove_red_eye),
          iconColor: Colors.blue,
          subtitle: Text("subtitle 1"),
          tileColor: Colors.lightGreenAccent,
          textColor: Colors.purple,
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey,
            ),
          ),
        ),
        ListTile(
          title: Text("Title 3"),
          trailing: Icon(Icons.remove_red_eye),
          iconColor: Colors.blue,
          subtitle: Text("subtitle 1"),
          tileColor: Colors.lightGreenAccent,
          textColor: Colors.purple,
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey,
            ),
          ),
        )
      ],
    );
  }
}

class StatefulWidgetClass extends StatefulWidget {
  const StatefulWidgetClass({Key? key}) : super(key: key);

  @override
  _StatefulWidgetClassState createState() => _StatefulWidgetClassState();
}

class _StatefulWidgetClassState extends State<StatefulWidgetClass> {
  String text = "Flutter Stateful Widget init";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          RaisedButton(
            onPressed: () {
              setState(() {
                text = "Flutter Stateful Widget change";
              });
            },
            child: Text("Change"),
          )
        ],
      )),
    );
  }
}

class ContainerWidgetClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 300.0,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: Text(
        "Container Widget Example",
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(color: Colors.blueGrey.shade600, width: 2)),
    );
  }
}

class StatelessClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomeShape(),
        SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        CustomeShape()
      ],
    );
  }
}

class CustomeShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.amber,
      ),
      child: Center(child: Text("Flutter From Scratch")),
    );
  }
}
