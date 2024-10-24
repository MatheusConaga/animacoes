import 'package:flutter/material.dart';

class AnimacoesBasicas extends StatefulWidget {
  const AnimacoesBasicas({super.key});

  @override
  State<AnimacoesBasicas> createState() => _AnimacoesBasicasState();
}

class _AnimacoesBasicasState extends State<AnimacoesBasicas> {

  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Meu app"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
                _status = !_status;
            });
          },
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 6,
        child: Icon(Icons.add_box),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      /*
      body: AnimatedContainer(
          duration: Duration(seconds: 1),
        color: Colors.green,
        padding: EdgeInsets.all(10),
        height: _status ? 0 : 100,
      ),
    */

      /*
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        color: Colors.green,
        padding: EdgeInsets.only(bottom: 100, top: 20),
        alignment: _status ? Alignment.bottomCenter : Alignment.topCenter,
        child: AnimatedOpacity(
            opacity: _status ? 1 : 0,
            duration: Duration(seconds: 2),
          child: Container(
            child: Icon(
              Icons.airplanemode_active,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
      */

      body: Padding(
        padding: EdgeInsets.only(left: 10,top: 10),
        child: GestureDetector(
          onTap: (){
            setState(() {
              _status = !_status;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.linear,
            alignment: Alignment.center,
            width: _status ? 60 : 160,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30)
            ),
            child: _status ? Icon(Icons.account_circle, color: Colors.white,)
                : Text("Mensagem", style: TextStyle(color: Colors.white,fontSize: 20),),
          ),
        ),
      ),


    );
  }
}
