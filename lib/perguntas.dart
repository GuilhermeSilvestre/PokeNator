import 'package:flutter/material.dart';
import 'package:pokinator/perguntas2.dart';
import 'constants.dart';

class Perguntas extends StatefulWidget {
  const Perguntas({Key? key}) : super(key: key);

  static const String id = "perguntas";

  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  String pergunta = '';

  int ponteiro = 1;
  /*
  1 - fogo
  2 - água
  3 - grama
  4 - normal
  5 - elétrico
  6 - fantasma
  7 - venenoso
  8 - lutadir
  9 - pedra
  10 - psíquico
   */

  List<String> all_Perguntas = [
    'O pokémon é do tipo fogo?',
    'O pokémon é do tipo água?',
    'O pokémon é do tipo grama?',
    'O pokémon é do tipo normal? (Lembrando que aqui também estão os dragões, fadas e terra)',
    'O pokémon é do tipo elétrico?',
    'O pokémon é do tipo fantasma?',
    'O pokémon é do tipo venenoso?',
    'O pokémon é do tipo lutador?',
    'O pokémon é do tipo pedra?',
    'O pokémon é do tipo psíquico?',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ponteiro = 1;
    pergunta = all_Perguntas[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: tituloApp,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/alakaza.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (ponteiro != 4)
                      Container(
                        height: 50,
                        width: 360,
                        child: Text(
                          pergunta,
                          textAlign: TextAlign.center,
                          style: estiloPoke,
                        ),
                        //color: Color(0xfffce205).withOpacity(0.3),
                      ),
                    if (ponteiro == 4)
                      Container(
                        height: 100,
                        width: 360,
                        child: Text(
                          pergunta,
                          textAlign: TextAlign.center,
                          style: estiloPoke,
                        ),
                        //color: Color(0xfffce205).withOpacity(0.3),
                      ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (ponteiro < 11)
                          ElevatedButton(
                            onPressed: () {
                              // Navigator.pushNamed(context, Perguntas2.id,
                              //     arguments: ponteiro);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Perguntas2(
                                    ponteiro,
                                  ),
                                ),
                              );
                            },
                            child: const Text('Sim'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.redAccent,
                              onPrimary: Colors.yellowAccent,
                              elevation: 10,
                              shadowColor: Colors.purpleAccent,
                              fixedSize: const Size(100, 70),
                              textStyle: const TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        const SizedBox(
                          width: 50,
                        ),
                        if (ponteiro < 11)
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                ponteiro = ponteiro + 1;
                                if (ponteiro < 11)
                                  pergunta = all_Perguntas[ponteiro - 1];
                                //print(ponteiro);
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.redAccent,
                              onPrimary: Colors.yellowAccent,
                              elevation: 10,
                              shadowColor: Colors.purpleAccent,
                              fixedSize: const Size(100, 70),
                              textStyle: const TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text('Não'),
                          ),
                      ],
                    ),
                    if (ponteiro == 11)
                      const SizedBox(
                        height: 30,
                      ),
                    if (ponteiro == 11)
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            ponteiro = 1;
                            pergunta = all_Perguntas[0];
                          });
                        },
                        child: const Text(
                          'Você não escolheu nenhum tipo!',
                          textAlign: TextAlign.center,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.red,
                          elevation: 10,
                          shadowColor: Colors.purpleAccent,
                          fixedSize: const Size(220, 140),
                          textStyle: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
