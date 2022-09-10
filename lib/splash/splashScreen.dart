// ignore_for_file: file_names, unnecessary_const

// Animated splash screen
import 'dart:async';
import 'package:flutter/material.dart';

import 'home_Screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeScreen())));
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 202, 50),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
                height: 250,
                width: 230,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("images/splash.jpg"),
                )),
          ),
        ),
      ),
    );
  }
}
