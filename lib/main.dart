import 'package:flutter/material.dart';

import 'package:hstclone/Screens/FlashScreen.dart';
import 'package:hstclone/Screens/Homescreen.dart';
import 'package:hstclone/Screens/Subpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      //home: SubscribePage(),
    );
  }
}
