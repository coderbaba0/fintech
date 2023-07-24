import 'dart:async';
import 'package:flutter/material.dart';
import '../navigation.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  final _splashDelay = 4000;
  late AnimationController _animationController;
  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _animationController.forward();
    super.initState();
    _loadWidget();
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  _loadWidget() async {
    var _duration = Duration(milliseconds: _splashDelay);
    return Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
        LoginPage()));
        // Navigation_Widget()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: ScaleTransition(
                scale: _animationController,
                child: Image.asset('images/intrust1.png'),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            child: ScaleTransition(
              scale: _animationController,
              child: Image.asset('images/intrust2.png'),
            ),
          ),
          // SizedBox(
          //   height: 30,
          // ),
          // Positioned(
          //
          //   bottom: 0,
          //     child: Center(
          //   child: Text('100% Secure Payment',style: TextStyle(color: Colors.black),),
          // ))
        ],
      ),
    );
  }
}
