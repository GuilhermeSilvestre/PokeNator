import 'package:flutter/material.dart';
import 'package:pokinator/resposta.dart';
import 'constants.dart';

class Perguntas2 extends StatefulWidget {
  Perguntas2(this.tipo);

  int tipo;

  /*
  1 - fogo
  2 - água
  3 - grama
  4 - normal
  5 - elétrico
  6 - fantasma
  7 - venenoso
  8 - lutador
  9 - pedra
  10 - psíquico
   */

  static const String id = "Perguntas2";

  @override
  State<Perguntas2> createState() => _Perguntas2State();
}

class _Perguntas2State extends State<Perguntas2> {
  String pergunta = '';

  bool achou = false;

  late int tipoPokemon;

  int aux = 0;

//========================================================
//=================TIPO FOGO==============================
  List<String> listaPerguntasFogo = [
    'O pokémon anda sobre 4 patas?',
    'É uma evolução?',
    'É uma raposa?',
    'É um cavalo?',
    'É um cachorro?',
    'É voador?',
    'É uma ave?',
    'É um dragão? (OBS: Dragões possuem asas)',
    'É um pokémon básico?',
    'Possui alguma evolução?(Acima dele)',
    '',
  ];

  List<String> pokemon_fogo = [
    'Charmander',
    'Charmeleon',
    'Charizard',
    'Vulpix',
    'Ninetales',
    'Growlithe',
    'Arcanine',
    'Ponyta',
    'Rapidash',
    'Magmar',
    'Flareon',
    'Moltres',
  ];

//========================================================
//=================TIPO AGUA==============================
  List<String> listaPerguntasAgua = [
    'Seu pokémon é baseado em tartaruga?',
    'É um pokémon básico?',
    'Possui alguma evolução (acima do nível dele)?',
    'É pré-histórico?',
    'Parece um caranguejo?',
    'Foi baseado em cavalo marinho?',
    'É marrom?',
    'É uma estrela do mar?',
    'Ele possui concha no corpo?',
    'É predominantemente rosa?',
    'Por acaso ele é um pato?',
    'Não seria uma ave azul, né?',
    'É um dragão absurdo?',
    'Parece uma foca?',
    'O Ash usava como meio de transporte?',
    'Tem espiral na barriguinha?',
    'Antes ele era um eevee?',
    '',
  ];

  List<String> pokemon_agua = [
    'Squirtle',
    'Wartortle',
    'Blastoise',
    'Psyduck',
    'Golduck',
    'Poliwag',
    'Poliwhirl',
    'poliwrath',
    'Tentacool',
    'Tentacruel',
    'Slowpoke',
    'Slowbro',
    'Seel',
    'Dewgong',
    'Shellder',
    'Cloyster',
    'Krabby',
    'Kingler',
    'Horsea',
    'Seadra',
    'Goldeen',
    'Seaking',
    'Staryu',
    'Starmie',
    'Magikarp',
    'Gyarados',
    'Lapras',
    'Vaporeon',
    'Omanyte',
    'Omastar',
    'Kabuto',
    'Kabutops',
    'Jynx',
    'Articuno',
  ];

//=========================================================
//=================TIPO GRAMA==============================
  List<String> listaPerguntasGrama = [
    'Pergunta 1?',
    'Pergunta 2?',
    '',
  ];

  List<String> pokemon_grama = [
    'bulbasaur',
    'ivysaur',
    'venosaur',
  ];

//==========================================================
//=================TIPO NORMAL==============================
  List<String> listaPerguntasNormal = [
    'Pergunta 1?',
    'Pergunta 2?',
    '',
  ];

  List<String> pokemon_normal = [
    'meowth',
    'persian',
    'ditto',
  ];

//============================================================
//=================TIPO ELETRICO==============================
  List<String> listaPerguntasEletrico = [
    'Pergunta 1?',
    'Pergunta 2?',
    '',
  ];

  List<String> pokemon_eletrico = [
    'pikachu',
    'raichu',
    'electabuzz',
  ];

//=============================================================
//=================TIPO FANTASMA ==============================
  List<String> listaPerguntasFantasma = [
    'Pergunta 1?',
    'Pergunta 2?',
    '',
  ];

  List<String> pokemon_fantasma = [
    'pikachu',
  ];

//============================================================
//=================TIPO VENENOSO==============================
  List<String> listaPerguntasVenenoso = [
    'Pergunta 1?',
    'Pergunta 2?',
    '',
  ];

  List<String> pokemon_venenoso = [
    'pikachu',
  ];

//===========================================================
//=================TIPO LUTADOR==============================
  List<String> listaPerguntasLutador = [
    'Pergunta 1?',
    'Pergunta 2?',
    '',
  ];

  List<String> pokemon_lutador = [
    'pikachu',
  ];

//========================================================
//=================TIPO PEDRA==============================
  List<String> listaPerguntasPedra = [
    'Pergunta 1?',
    'Pergunta 2?',
    '',
  ];

  List<String> pokemon_pedra = [
    'pikachu',
  ];

//===========================================================
//=================TIPO PSIQUICO==============================
  List<String> listaPerguntasPsiquico = [
    'Pergunta 1?',
    'Pergunta 2?',
    '',
  ];

  List<String> pokemon_psiquico = [
    'pikachu',
  ];

//===========================================================
//===========================================================

  void verificarPokemon() {
    if (tipoPokemon == 1) {
      if (pokemon_fogo.length == 1) {
        print('ACHOU POKÉMON: ${pokemon_fogo[0]}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              pokemon_fogo[0],
            ),
          ),
        );
      }
    }

    if (tipoPokemon == 2) {
      if (pokemon_agua.length == 1) {
        print('ACHOU POKÉMON: ${pokemon_agua[0]}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              pokemon_agua[0],
            ),
          ),
        );
      }
    }

    if (tipoPokemon == 3) {
      if (pokemon_grama.length == 1) {
        print('ACHOU POKÉMON: ${pokemon_grama[0]}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              pokemon_grama[0],
            ),
          ),
        );
      }
    }

    if (tipoPokemon == 4) {
      if (pokemon_normal.length == 1) {
        print('ACHOU POKÉMON: ${pokemon_normal[0]}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              pokemon_normal[0],
            ),
          ),
        );
      }
    }

    if (tipoPokemon == 5) {
      if (pokemon_eletrico.length == 1) {
        print('ACHOU POKÉMON: ${pokemon_eletrico[0]}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              pokemon_eletrico[0],
            ),
          ),
        );
      }
    }

    if (tipoPokemon == 6) {
      if (pokemon_fantasma.length == 1) {
        print('ACHOU POKÉMON: ${pokemon_fantasma[0]}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              pokemon_fantasma[0],
            ),
          ),
        );
      }
    }

    if (tipoPokemon == 7) {
      if (pokemon_venenoso.length == 1) {
        print('ACHOU POKÉMON: ${pokemon_venenoso[0]}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              pokemon_venenoso[0],
            ),
          ),
        );
      }
    }

    if (tipoPokemon == 8) {
      if (pokemon_lutador.length == 1) {
        print('ACHOU POKÉMON: ${pokemon_lutador[0]}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              pokemon_lutador[0],
            ),
          ),
        );
      }
    }

    if (tipoPokemon == 9) {
      if (pokemon_pedra.length == 1) {
        print('ACHOU POKÉMON: ${pokemon_pedra[0]}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              pokemon_pedra[0],
            ),
          ),
        );
      }
    }

    if (tipoPokemon == 10) {
      if (pokemon_psiquico.length == 1) {
        print('ACHOU POKÉMON: ${pokemon_psiquico[0]}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              pokemon_psiquico[0],
            ),
          ),
        );
      }
    }
  }

  void tipoFogo(String resposta) {
    setState(() {
      if (resposta == 'primeiro') {
        pergunta = listaPerguntasFogo[aux];
      }

      //===========RESPOSTA PARA A PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 1) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Charmander'));
        pokemon_fogo.removeWhere((item) => (item == 'Charmeleon'));
        pokemon_fogo.removeWhere((item) => (item == 'Charizard'));
        pokemon_fogo.removeWhere((item) => (item == 'Magmar'));
        //print(pokemon_fogo[0]);
        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 1) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Vulpix'));
        pokemon_fogo.removeWhere((item) => (item == 'Ninetales'));
        pokemon_fogo.removeWhere((item) => (item == 'Growlithe'));
        pokemon_fogo.removeWhere((item) => (item == 'Arcanine'));
        pokemon_fogo.removeWhere((item) => (item == 'Ponyta'));
        pokemon_fogo.removeWhere((item) => (item == 'Rapidash'));
        pokemon_fogo.removeWhere((item) => (item == 'Flareon'));
        //print(pokemon_fogo[0]);
        verificarPokemon();
      }
      //===========RESPOSTA PARA A SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 2) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Charmander'));
        pokemon_fogo.removeWhere((item) => (item == 'Vulpix'));
        pokemon_fogo.removeWhere((item) => (item == 'Growlithe'));
        pokemon_fogo.removeWhere((item) => (item == 'Ponyta'));
        pokemon_fogo.removeWhere((item) => (item == 'Magmar'));
        pokemon_fogo.removeWhere((item) => (item == 'Moltres'));
        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 2) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Charmeleon'));
        pokemon_fogo.removeWhere((item) => (item == 'Charizard'));
        pokemon_fogo.removeWhere((item) => (item == 'Ninetales'));
        pokemon_fogo.removeWhere((item) => (item == 'Arcanine'));
        pokemon_fogo.removeWhere((item) => (item == 'Rapidash'));
        pokemon_fogo.removeWhere((item) => (item == 'Flareon'));
        //print(pokemon_fogo[0]);
        verificarPokemon();
      }

      //===========RESPOSTA PARA A TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 3) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo
            .removeWhere((item) => (item != 'Vulpix' && item != 'Ninetales'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 3) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Vulpix'));
        pokemon_fogo.removeWhere((item) => (item == 'Ninetales'));
        //print(pokemon_fogo[0]);
        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 4) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo
            .removeWhere((item) => (item != 'Ponyta' && item != 'Rapidash'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 4) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Ponyta'));
        pokemon_fogo.removeWhere((item) => (item == 'Rapidash'));
        //print(pokemon_fogo[0]);
        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 5) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo
            .removeWhere((item) => (item != 'Growlithe' && item != 'Arcanine'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 5) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Growlithe'));
        pokemon_fogo.removeWhere((item) => (item == 'Arcanine'));
        //print(pokemon_fogo[0]);
        verificarPokemon();
      }

      //===========RESPOSTA PARA A SEXTA PERGUNTA=========
      if (resposta == 'sim' && aux == 6) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo
            .removeWhere((item) => (item != 'Charizard' && item != 'Moltres'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 6) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Charizard'));
        pokemon_fogo.removeWhere((item) => (item == 'Moltres'));
        //print(pokemon_fogo[0]);
        verificarPokemon();
      }

      //===========RESPOSTA PARA A SETIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 7) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item != 'Moltres'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 7) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Moltres'));

        //print(pokemon_fogo[0]);
        verificarPokemon();
      }

      //===========RESPOSTA PARA A OITAVA PERGUNTA=========
      if (resposta == 'sim' && aux == 8) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item != 'Charizard'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 8) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Charizard'));

        //print(pokemon_fogo[0]);
        verificarPokemon();
      }

      //===========RESPOSTA PARA A NONA PERGUNTA=========
      if (resposta == 'sim' && aux == 9) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item != 'Charmander' &&
            item != 'Moltres' &&
            item != 'Magmar' &&
            item != 'Ponyta' &&
            item != 'Growlithe' &&
            item != 'Vulpix'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 9) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Charmander' &&
            item == 'Moltres' &&
            item == 'Magmar' &&
            item == 'Ponyta' &&
            item == 'Growlithe' &&
            item == 'Vulpix'));

        //print(pokemon_fogo[0]);
        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 10) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Charizard'));
        pokemon_fogo.removeWhere((item) => (item == 'Ninetails'));
        pokemon_fogo.removeWhere((item) => (item == 'Arcanine'));
        pokemon_fogo.removeWhere((item) => (item == 'Rapidash'));
        pokemon_fogo.removeWhere((item) => (item == 'Magmar'));
        pokemon_fogo.removeWhere((item) => (item == 'Flareon'));
        pokemon_fogo.removeWhere((item) => (item == 'Moltres'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 10) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Charmander'));
        pokemon_fogo.removeWhere((item) => (item == 'Charmeleon'));
        pokemon_fogo.removeWhere((item) => (item == 'Vulpix'));
        pokemon_fogo.removeWhere((item) => (item == 'Growlithe'));
        pokemon_fogo.removeWhere((item) => (item == 'Ponyta'));

        //print(pokemon_fogo[0]);
        verificarPokemon();
      }
    });
    aux++;
  }

  void tipoAgua(String resposta) {
    setState(() {
      if (resposta == 'primeiro') {
        pergunta = listaPerguntasAgua[aux];
      }

      //===========RESPOSTA PARA A PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 1) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) =>
            (item != 'Squirtle' && item != 'Wartortle' && item != 'Blastoise'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 1) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Squirtle'));
        pokemon_agua.removeWhere((item) => (item == 'Wartortle'));
        pokemon_agua.removeWhere((item) => (item == 'Blastoise'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 2) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item != 'Squirtle' &&
            item != 'Psyduck' &&
            item != 'Poliwag' &&
            item != 'Tentacool' &&
            item != 'Slowpoke' &&
            item != 'Seel' &&
            item != 'Shellder' &&
            item != 'Krabby' &&
            item != 'Horsea' &&
            item != 'Goldeen' &&
            item != 'Staryu' &&
            item != 'Magikarp' &&
            item != 'Lapras' &&
            item != 'Omanyte' &&
            item != 'Kabuto' &&
            item != 'Jynx' &&
            item != 'Articuno'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 2) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Squirtle'));
        pokemon_agua.removeWhere((item) => (item == 'Psyduck'));
        pokemon_agua.removeWhere((item) => (item == 'Poliwag'));
        pokemon_agua.removeWhere((item) => (item == 'Tentacool'));
        pokemon_agua.removeWhere((item) => (item == 'Slowpoke'));
        pokemon_agua.removeWhere((item) => (item == 'Seel'));
        pokemon_agua.removeWhere((item) => (item == 'Shellder'));
        pokemon_agua.removeWhere((item) => (item == 'Krabby'));
        pokemon_agua.removeWhere((item) => (item == 'Horsea'));
        pokemon_agua.removeWhere((item) => (item == 'Goldeen'));
        pokemon_agua.removeWhere((item) => (item == 'Staryu'));
        pokemon_agua.removeWhere((item) => (item == 'Magikarp'));
        pokemon_agua.removeWhere((item) => (item == 'Lapras'));
        pokemon_agua.removeWhere((item) => (item == 'Omanyte'));
        pokemon_agua.removeWhere((item) => (item == 'Kabuto'));
        pokemon_agua.removeWhere((item) => (item == 'Jynx'));
        pokemon_agua.removeWhere((item) => (item == 'Articuno'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 3) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere(
            (item) => (item != 'Wartortle' && item != 'Poliwhirl'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 3) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Wartortle'));
        pokemon_agua.removeWhere((item) => (item == 'Poliwhirl'));

        verificarPokemon();
      }
    });
    aux++;
  }

  void tipoGrama(String resposta) {}

  void tipoNormal(String resposta) {}

  void tipoEletrico(String resposta) {}

  void tipoFantasma(String resposta) {}

  void tipoVenenoso(String resposta) {}

  void tipoLutador(String resposta) {}

  void tipoPedra(String resposta) {}

  void tipoPsiquico(String resposta) {}

  @override
  void initState() {
    super.initState();
    tipoPokemon = widget.tipo;
    if (tipoPokemon == 1) tipoFogo('primeiro');
    if (tipoPokemon == 2) tipoAgua('primeiro');
    if (tipoPokemon == 3) tipoGrama('primeiro');
    if (tipoPokemon == 4) tipoNormal('primeiro');
    if (tipoPokemon == 5) tipoEletrico('primeiro');
    if (tipoPokemon == 6) tipoFantasma('primeiro');
    if (tipoPokemon == 7) tipoVenenoso('primeiro');
    if (tipoPokemon == 8) tipoLutador('primeiro');
    if (tipoPokemon == 9) tipoPedra('primeiro');
    if (tipoPokemon == 10) tipoPsiquico('primeiro');
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
                        ElevatedButton(
                          onPressed: () {
                            if (tipoPokemon == 1) {
                              tipoFogo('sim');
                            }
                            if (tipoPokemon == 2) {
                              tipoAgua('sim');
                            }
                            if (tipoPokemon == 3) {
                              tipoGrama('sim');
                            }
                            if (tipoPokemon == 4) {
                              tipoNormal('sim');
                            }
                            if (tipoPokemon == 5) {
                              tipoEletrico('sim');
                            }
                            if (tipoPokemon == 6) {
                              tipoFantasma('sim');
                            }
                            if (tipoPokemon == 7) {
                              tipoVenenoso('sim');
                            }
                            if (tipoPokemon == 8) {
                              tipoLutador('sim');
                            }
                            if (tipoPokemon == 9) {
                              tipoPedra('sim');
                            }
                            if (tipoPokemon == 10) {
                              tipoPsiquico('sim');
                            }
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
                          child: const Text('Sim'),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (tipoPokemon == 1) {
                              tipoFogo('nao');
                            }
                            if (tipoPokemon == 2) {
                              tipoAgua('nao');
                            }
                            if (tipoPokemon == 3) {
                              tipoGrama('nao');
                            }
                            if (tipoPokemon == 4) {
                              tipoNormal('nao');
                            }
                            if (tipoPokemon == 5) {
                              tipoEletrico('nao');
                            }
                            if (tipoPokemon == 6) {
                              tipoFantasma('nao');
                            }
                            if (tipoPokemon == 7) {
                              tipoVenenoso('nao');
                            }
                            if (tipoPokemon == 8) {
                              tipoLutador('nao');
                            }
                            if (tipoPokemon == 9) {
                              tipoPedra('nao');
                            }
                            if (tipoPokemon == 10) {
                              tipoPsiquico('nao');
                            }
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
                    )
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
