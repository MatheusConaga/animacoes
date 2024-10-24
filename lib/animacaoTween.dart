import 'dart:math';
import 'package:flutter/material.dart';

class AnimacaoTween extends StatefulWidget {
  const AnimacaoTween({super.key});

  @override
  State<AnimacaoTween> createState() => _AnimacaoTweenState();
}

class _AnimacaoTweenState extends State<AnimacaoTween> {

  static final colorTween = ColorTween(begin: Colors.white, end: Colors.orange);

  @override
  Widget build(BuildContext context) {
    return Center(

    /*
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 6.28),
          duration: Duration(seconds: 2),
          builder: (BuildContext context, double angulo, Widget? widget){
            return Transform.rotate(
              angle: angulo,
              child: Image.asset("images/logo.png"),
            );
          }
      ),
      */

      /*
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 50, end: 180),
          duration: Duration(seconds: 2),
          builder: (BuildContext context, double largura, Widget? widget){
            return Container(
              color: Colors.green,
              width: largura,
              height: 60,
            );
          }
      ),
      */

      child: TweenAnimationBuilder(
          tween: colorTween,
          duration: Duration(seconds: 2),
          child: Image.asset("images/estrelas.jpg"),
          builder: (BuildContext context, Color? cor, Widget? widget){
            return ColorFiltered(
                colorFilter: ColorFilter.mode(cor!, BlendMode.overlay),
              child: widget,
            );

          }
      ),


    );

  }
}
