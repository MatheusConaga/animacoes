import 'package:flutter/material.dart';

class MaisAnimacoes extends StatefulWidget {
  const MaisAnimacoes({super.key});

  @override
  State<MaisAnimacoes> createState() => _MaisAnimacoesState();
}

class _MaisAnimacoesState extends State<MaisAnimacoes> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  Animation? _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    // _animation = Tween<double>(
    //   begin: 0,
    //   end: 1
    // ).animate(_animationController);

    _animation = Tween<Offset>(
        begin: Offset(0, 0),
        end: Offset(60, 60),
    ).animate(_animationController);

  }

  @override
  void dispose() {
    super.dispose();

    _animationController.dispose();

  }


  @override
  Widget build(BuildContext context) {

    _animationController.forward();

    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: AnimatedBuilder(
        child: Stack(
          children: [
            Positioned(
              width: 180,
                height: 180,
                left: 0,
                top: 0,
                child: Image.asset("images/logo.png"),
            ),
          ],
        ),
          animation: _animation!,
          builder: (context, widget){

            return Transform.translate(
              offset: _animation!.value,
              child: widget,
            );

            // return Transform.scale(
            //     scale: _animation!.value,
            //     child: widget,
            // );

            // return Transform.rotate(
            //   angle: _animation!.value,
            //   child: widget,
            // );

          }
      ),
    );
  }
}
