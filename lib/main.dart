import 'package:microgreen_recipes/views/home_view.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('ru'),
      debugShowCheckedModeBanner: false,
      title: 'Microgreen recipes',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeView(),
    );
  }
}
