import 'package:flutter/material.dart';
import 'contato.dart';

class detalhesDoContato extends StatelessWidget {
  const detalhesDoContato({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    contato contatoDetalhado = ModalRoute.of(context)!.settings.arguments as contato;

    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes do contato"),
      ),
      body: Center(
        child: Card(
          child: Column(
            children:[
              Row(
                children: [
                  Text("Nome:"),
                  Text(contatoDetalhado.nome)
                ],
              ),
              Row(
                children: [
                  Text("Idade:"),
                  Text(contatoDetalhado.idade.toString())
                ],
              ),
              Row(
                children: [
                  Text("Telefone:"),
                  Text(contatoDetalhado.telefone)
                ],
              ),
              Row(
                children: [
                  Text("E-mail:"),
                  Text(contatoDetalhado.email)
                ],
              ),
            ]
          ),
        ),
      ),

    );
  }
}
