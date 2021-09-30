import 'dart:math';

import 'package:flutter/material.dart';
import 'package:app_cara_ou_coroa/resultado.dart';

class jogar extends StatefulWidget {
  @override
  _jogarState createState() => _jogarState();
}

class _jogarState extends State<jogar> {


  void _exibirResultado(){
    var itens = ["cara","coroa"];

   var resul = Random().nextInt(itens.length);

   String moeda_r = itens[resul];
  Navigator.push(context,
      MaterialPageRoute(
          builder:
          (context) => resultado(resul, nome: moeda_r,)
      ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff38b4ec),
      appBar: AppBar(
      title: Text("CARA OU COROA?"),
      ),
      body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset("img/logo.png"),
                GestureDetector(
                  onTap: _exibirResultado,
                  child: Image.asset("img/botao_jogar.png"),
                )
              ],
            ),
      ),

    );
  }
}

