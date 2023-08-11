import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Widget G8",
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Container(
                child: Text('2'),
                height: 100,
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: Container(
                child: Text('3'),
                height: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
