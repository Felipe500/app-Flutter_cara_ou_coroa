import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class resultado extends StatefulWidget {

  int moeda;
  String nome;
  //dados obetido de outras telas
  //moeda --obrigatorio
  //nome --opcional
  resultado(this.moeda, {this.nome});

  @override
  _resultadoState createState() => _resultadoState();
}

class _resultadoState extends State<resultado> {
  var opcoes = ["img/moeda_cara.png","img/moeda_coroa.png"];
  @override
  Widget build(BuildContext context) {

    //passar dados antes de retonar o scaffold
    //posso fazer verificações com dados de outras telas

    String texto = this.widget.nome;
    if (texto == "coroa"){
      texto = "Coroa";
    }else{
      texto = "Cara";
    }
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
            Image.asset(opcoes[widget.moeda]),
            Padding(padding: EdgeInsets.only(left: 165),
                child : Text(
                  texto,
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold
                  ),
                ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },

              child: Image.asset("img/botao_voltar.png"),

            )
          ],
        ),
      ),

    );
  }
}
