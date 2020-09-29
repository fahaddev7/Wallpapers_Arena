


import 'package:flutter/material.dart';

import 'package:internet_ui/internetpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wallpapers",    
      theme: ThemeData(
        primarySwatch: Colors.red
      ),  
      home: Internetui(),
    );
  }
}

