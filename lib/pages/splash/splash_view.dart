import 'dart:async';

import 'package:flutter/material.dart';

import '../home/home_view.dart';

class SplashView extends StatefulWidget {
  static const routeName = "splash_screen";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacementNamed(context, HomeView.routeName);
      },
    );
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Color(0XFFFF800B), Color(0xFFBB3206)]),
        color: Colors.white,
      ),
      child: const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Street ",
          style: TextStyle(
              color: Colors.black, fontSize: 80, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          " News ",
          style: TextStyle(
              color: Colors.orange, fontSize: 80, fontWeight: FontWeight.bold),
        )
      ]),
    ));
  }
}
