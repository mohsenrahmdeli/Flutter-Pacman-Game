import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int numberRow = 11;
  int numberOfSquares = numberRow * 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: numberOfSquares,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: numberRow),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Score: ',style:TextStyle(
                    color: Colors.white,fontSize: 40,
                  ),),
                  Text('P L A Y',style:TextStyle(
                    color: Colors.white,fontSize: 40,
                  ),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
