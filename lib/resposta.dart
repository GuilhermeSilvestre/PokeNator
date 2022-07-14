import 'package:flutter/material.dart';
import 'package:pokinator/main.dart';
import 'constants.dart';

class Resposta extends StatefulWidget {
  Resposta(this.resposta);

  String resposta;

  @override
  State<Resposta> createState() => _RespostaState();
}

class _RespostaState extends State<Resposta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: tituloApp,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/alakaza.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                widget.resposta,
                textAlign: TextAlign.center,
                style: estiloPokeResp,
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, MyHomePage.id);
                  });
                },
                child: const Text('Jogar Novamente'),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(185, 80),
                  elevation: 4,
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
