import 'package:flutter/material.dart';
import 'contato.dart';

class adicionaContato extends StatefulWidget {
  const adicionaContato({Key? key}) : super(key: key);

  @override
  _adicionaContatoState createState() => _adicionaContatoState();
}

class _adicionaContatoState extends State<adicionaContato> {
  late String nome, idade, telefone, email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela de adição de contato"),),
      body: Column(
        children: [
          TextField( //nome
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "nome"
            ),
            onChanged: (value) => nome=value,
          ),
          TextField( //idade
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "idade"
            ),
            onChanged: (value) => idade=value,
          ),
          TextField( //telefone
          decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "telefone",
            ),
            onChanged: (value) => telefone=value,
          ),
          TextField( //email
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "email",
            ),
            onChanged: (value) => email=value,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          contato contatoAdicionado = contato(nome, int.parse(idade), telefone, email);
          Navigator.pop(context, contatoAdicionado);
        }),
      );
  }
}
