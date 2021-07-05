import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
//import 'package:translator/translator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController textEditingController = new TextEditingController();

  // String appliationID = "62e70664";
  // String applicationKey = "3be0dab1b58cb6aa3e1c1fbb1cc9e8df";

  getRecipes(String query) async{
    var url =
        Uri.parse("https://api.edamam.com/search?q=$query&app_id=62e70664&app_key=3be0dab1b58cb6aa3e1c1fbb1cc9e8df");

    http.Response response = await http.get(url);
    print("$response this is response");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              const Color(0xff071930),
              const Color(0xff4d0d90),
              const Color(0xff071930)
            ])),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: kIsWeb
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Microgreen',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffcb23ab)),
                    ),
                    Text(
                      'Рецепты',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                          //backgroundColor: Colors.white,
                          //color: Color(0xff792bf3)
                          ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Что будешь сегодня готовить?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Просто введи ингридиенты которые хотелось бы использовать и я предложу лучшие рецепты?',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: textEditingController,
                          decoration: InputDecoration(
                            hintText: "Введите ингридиенты",
                            hintStyle:
                                TextStyle(fontSize: 18, 
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 26,
                      ),
                      InkWell(
                        onTap: () {
                          if (textEditingController.text.isNotEmpty) {
                            getRecipes(textEditingController.text);
                            print("just do it");
                          } else {
                            print("just don`t do it");
                          }
                        },
                        child: Container(
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
