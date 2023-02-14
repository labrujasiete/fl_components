import 'dart:math' show Random;

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  
  double _width = 50;
  double _height = 50;
  Color _color = AppTheme.primary;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);
  
  void changeShape(){

    final random = Random();

    _width = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      1
      );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.bounceOut,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
         ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        foregroundColor: Colors.white,
        child: const Icon(Icons.play_circle_outline, size: 40),
        ),
    );
  }
}