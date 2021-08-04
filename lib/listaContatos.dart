import 'package:flutter/material.dart';
import 'package:flutter03_listadecontatos/adicionaContato.dart';
import 'contato.dart';

class listaContatos extends StatefulWidget {
  const listaContatos({Key? key}) : super(key: key);

  @override
  _listaContatosState createState() => _listaContatosState(); //mudar o estado e retorna ela mesma
}

class _listaContatosState extends State<listaContatos> {
  List<contato> meusContatos = [];

  _listaContatosState(){
    meusContatos.add(contato("Edson",44,"99999999","edson.moreno@pucrs.br"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Minha lista de contatos")),
      body: ListView.builder(
        itemCount: meusContatos.length,
        itemBuilder: (context, indice){
          return Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Nome: ${meusContatos[indice].nome}"),
              subtitle: Text("Fone: ${meusContatos[indice].telefone}"),
            ),
          );
        }

      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        onPressed: () async{
          contato novoContato = await Navigator.push(context, MaterialPageRoute(builder: (_)=> adicionaContato()));
          if(novoContato!=null){
            setState(()=> meusContatos.add(novoContato));
          }
        }
      ),
    );
  }
}
