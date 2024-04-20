import 'package:flutter/material.dart';
import 'package:hstclone/Screens/Subpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late final fadeAnimation = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 1500),
  );

  @override
  void initState() {
    super.initState();
    fadeAnimation.forward();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SubscribePage()));
    });
  }

  @override
  void dispose() {
    fadeAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int width = MediaQuery.of(context).size.width.toInt();
    int height = MediaQuery.of(context).size.height.toInt();
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 20, 124, 1),
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: fadeAnimation,
            builder: (context, child) {
              return Opacity(
                opacity: fadeAnimation.value,
                child: Center(
                  child: Transform.translate(
                    offset: Offset(
                      0.0,
                      80 * (1 - fadeAnimation.value),
                    ),
                    child: Image.asset(
                      'assets/logo.png',
                      color: Colors.white,
                      width: width * 0.3,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
