import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xff213A50),
                  const Color(0xff071930)  
                ])
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('Microgreen'),
                    Text('Recipies',
                    style: TextStyle(
                      color: Colors.blue
                    ),)
                  ],
                ),
                SizedBox(
                  height: 30,),
                  Text('What will you cook today?')
              ],
            ),
          )
        ],
      ),
    );
  }
}
