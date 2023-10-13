import 'package:flutter/material.dart';

class favorite extends StatefulWidget {
  const favorite({super.key});

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        width: 500,
        height: 300,
        color: Colors.blueGrey,
      )
    );
  }
}