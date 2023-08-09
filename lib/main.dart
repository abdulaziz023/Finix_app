import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'model/model.dart';

Future<void> main() async {
  Uri uri = Uri.parse("https://dummyjson.com/users/7");
  Response response = await get(uri);
  User user = User.fromMap(jsonDecode(response.body));

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Finix app",
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("${user.firstName} ${user.hair!.color}"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Image(
            image: NetworkImage("${user.image}"),
          ),
        ),
      ),
    ),
  );
}
