import 'package:flutter/material.dart';

class AnimacaoExplicita extends StatefulWidget {
  const AnimacaoExplicita({super.key});

  @override
  State<AnimacaoExplicita> createState() => _AnimacaoExplicitaState();
}

class _AnimacaoExplicitaState extends State<AnimacaoExplicita> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  AnimationStatus? _animationStatus;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat()..addStatusListener((status){

      _animationStatus = status;

    });

  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: 300,
            height: 400,
            child: RotationTransition(
              alignment: Alignment.center,
              child: Image.asset("images/logo.png"),
              turns: _animationController,
            ),
          ),
          ElevatedButton(
              onPressed: (){

                if(_animationStatus == AnimationStatus.dismissed){
                  _animationController.forward();
                  // _animationController.repeat();
                } else{
                  _animationController.reverse();
                }

                // if (_animationController.isAnimating){
                //   _animationController.stop();
                // } else{
                //   _animationController.repeat();
                // }

              },
              child: Text(
                "Pressione",
              ),
          ),
        ],
      ),
    );
  }
}
