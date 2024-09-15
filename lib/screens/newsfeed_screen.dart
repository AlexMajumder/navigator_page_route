import 'dart:ffi';

import 'package:flutter/material.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key, required this.validUser});

   final bool validUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('NewsFeed',style: TextStyle(color: Colors.black),),
      ),body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('is valid user: $validUser',style: TextStyle(color: Colors.green)),
        ],
      ),
    ),
    );
  }
}
