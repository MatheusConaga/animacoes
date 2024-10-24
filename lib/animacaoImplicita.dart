import 'package:flutter/material.dart';

class AnimacaoImplicita extends StatefulWidget {
  const AnimacaoImplicita({super.key});

  @override
  State<AnimacaoImplicita> createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {

  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          padding: EdgeInsets.all(20),
          width: _status ? 200 : 300,
          height: _status ? 300 : 200,
          color: _status ? Colors.purpleAccent : Colors.white,
          child: Image.asset("images/logo.png"),
          duration: Duration(seconds: 1),
          curve: Curves.elasticInOut,
        ),
        ElevatedButton(
            onPressed: (){
              setState(() {
                  _status = !_status;
              });
            },
            child: Text("Alterar"),
        ),

      ],
    );
  }
}
