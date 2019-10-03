import 'package:flutter/material.dart';

// entry point for the app, 
// the => operator is shorthand for {} when there is only one line of code
void main() => runApp(MyApp());

// the root widget of our application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Building layouts'),
        ),
        body: myLayoutWidgetCombineWithPadding(),
      ),
    );
  }
  
  // simple layout widget
  Widget myLayoutWidget() {
  return Text('Hello world!',
    style: TextStyle(
        color: Colors.red
      )
    );
  }

  // layout widget combine with padding widget
  Widget myLayoutWidgetCombineWithPadding() {
    return Padding(
      // all side
      // padding: EdgeInsets.all(16.0),
      // every side is different value 
      padding: const EdgeInsets.only(
        left: 16.0, 
        top: 8.0, 
        right: 16.0, 
        bottom: 8.0
      ),
      child: Text('Hello Irfan Irawan Sukirman',
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.lime
        ),
      ),
    );
  }
}