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

  // center layout widget
  Widget myLayoutWidgetCenter() {
    return Center(
      child: Text('Irfan sedang ada ditengah layar', 
        style: TextStyle(
          fontSize: 24.0
        )
      )
    );
  }

  // top center layout widget using Alignment widget
  Widget myLayoutWidgetTopCenter() {
    return Align(
      // using value -1, 0, 1 for widget position
      // alignment: Alignment(0, -1),
      // or using another trick
      alignment: Alignment.topCenter,
      child: Text('Irfan top center',
      style: TextStyle(
          fontSize: 24.0
        )
      )
    );
  }

  // container widget using BoxDecoration widget for custom style
  Widget myLayoutWidgetContainer() {
    return Container(
      margin: EdgeInsets.all(30.0),
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.topCenter,
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all()
      ),
        child: Text('Hello Container widget', style: TextStyle(
          fontSize: 24.0
        ),
      ),
    );
  }

  // simple row widget
  Widget myRowWidget() {
    return Row(
        children: [
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
        ],
      );
    }

    // simple column widget
    Widget myColumnWidget() {
      return Column(
        children: [
          Icon(Icons.ac_unit),
          Icon(Icons.access_alarm),
          Icon(Icons.wifi),
          Icon(Icons.web)
        ],
      );
    }

    // row expand with expanded widget
    Widget myRowExpandedWidget() {
      return Row(
        children: [
          Expanded(child: Icon(Icons.account_balance)),
          Expanded(child: Icon(Icons.account_circle)),
          Expanded(child: Icon(Icons.adb)),
          Expanded(child: Icon(Icons.airline_seat_flat))
        ],
      );
    }
}