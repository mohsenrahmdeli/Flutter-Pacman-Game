import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color:Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              color:Colors.pink
            ),
          )
        ],
      ),
    );
  }
}