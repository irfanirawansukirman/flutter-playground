import 'package:flutter/material.dart';

void main() => runApp(
  MyApp()
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exploring Widgets"),
        ),

        body: myListViewWithTapPress(),
      ),
    );
  }

  // Text widget
  Widget myText() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text("Padding bro",
      style: TextStyle(
        fontSize: 30.0
      )),
    );
  }
}

  // Button widget - Raised Button type
  Widget myButton() {
    return RaisedButton(
      child: const Text('Button'),
      color: Colors.amber,
      elevation: 4.0,
      splashColor: Colors.grey,
      onPressed: () {
        // do something here
      },
    );
  }

  // Button widget - Flat Button type
  Widget myButton2() {
    return FlatButton(
      child: const Text('Button',
      style: TextStyle(
          color: Colors.white
        ),
      ),
      color: Colors.teal,
      splashColor: Colors.grey,
      onPressed: () {
        // do something here
      },
    );
  }

  // TextField widget - EditText in Android
  Widget myTextField() {
    return TextField(
      decoration: InputDecoration(
        // without underline border. If you want using underline border comment code below
        // border: InputBorder.none,
        hintText: 'Masukkan email Anda'
      ),
    );
  }

  // ListView widget - Recyclerview in Android
  Widget myListView() {
      return ListView.builder(
        padding: EdgeInsets.all(16.0),
        // spacing of the rows
        itemExtent: 30.0,
        // provides an infinite list
        itemBuilder: (BuildContext context, int index) {
          return Text('Row $index',
          style: TextStyle(
              color: Colors.cyan
            ),
          );
        },
      );
  }

  // ListView widget using onTap() press
  Widget myListViewWithTapPress() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Row $index'),
          onTap: () {

          },
        );
      },
    );
  }