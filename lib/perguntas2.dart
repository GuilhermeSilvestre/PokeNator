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
    'É um pokémon básico?',
    'Ele anda sobre 4 patas?',
    'Possui alguma evolução acima dele?',
    'É um dragão?',
    'Ele pode voar?',
    'Ele, ou a evolução dele, possui várias caldas?',
    'Por acaso ele sabe dar coice?',
    'Ele se parece com um gato ou raposa?',
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
    'Ele é uma carpa?',
    'É um peixe com chifre?',
    'É uma água viva mutante feia?',
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
    'Poliwrath',
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
    'O pokémon é um inseto?',
    'É um pokémon básico?',
    'Possui evoluções acima dele?',
    'Ele é predominantemente verde?',
    'Parece um dinossauro?',
    'Ele é um casulo?',
    'Parece uma borboleta?',
    'Lembra uma abelha?',
    'É uma planta carnívora doida?',
    'Tem olhos vermelhos?',
    'Pode voar?',
    'Possui poderes psiquicos?',
    'Parece uma plantinha desnutrida?',
    'Anda sobre dus patas?',
    'Fica toda enrolada escondendo o rosto?',
    'Ele tem cogumelos nas costas, né?',
    '',
  ];

  List<String> pokemon_grama = [
    'Bulbasaur',
    'Ivysaur',
    'Venusaur',
    'Oddish',
    'Gloom',
    'Vileplume',
    'Paras',
    'Parasect',
    'Venonat',
    'Venomoth',
    'Bellsprout',
    'Weepinbell',
    'Victreebel',
    'Exeggcute',
    'Exeggutor',
    'Caterpie',
    'Metapod',
    'Butterfree',
    'Weedle',
    'Kakuna',
    'Beedrill',
    'Tangela',
    'Scyther',
    'Pinsir',
  ];

//==========================================================
//=================TIPO NORMAL==============================
  List<String> listaPerguntasNormal = [
    'É um pokémon básico?',
    'Existem evoluções acima dele?',
    'Ele pode voar?',
    'Ele é um dragão?',
    'Parece um avestruz?',
    'Ele tem bastante a cor rosa ou roxa?',
    'Por acaso ele é formado apenas por ângulos retos?',
    'Trabalha no centro pokémon?',
    'Lembra uma gelatina?',
    'Pesa mais de 300 kilos?',
    'Ele mia?',
    'Usa um crânio como máscara?',
    'Tem um ou mais chifres na cabeça?',
    'Gosta de mímica?',
    'É amarelinho?',
    'Vive enterrado na terra?',
    'Ele usa ou já usou na forma anterior um microfone para cantar?',
    'É um hamster bravinho?',
    'O Ash já teve alguma evolução ou pré-evolução desse pokémon?',
    '',
  ];

  List<String> pokemon_normal = [
    'Pidgey',
    'Pidgeotto',
    'Pidgeot',
    'Rattata',
    'Raticate',
    'Spearow',
    'Fearow',
    'Clefairy',
    'Clefable',
    'Jigglypuff',
    'Wigglytuff',
    'Meowth',
    'Persian',
    'Farfetchd',
    'Doduo',
    'Dodrio',
    'Licktung',
    'Chansey',
    'Kangaskhan',
    'Tauros',
    'Ditto',
    'Eevee',
    'Porygon',
    'Snorlax',
    'Mr. Mime',
    'Sandshrew',
    'Sandslash',
    'Diglett',
    'Dugtrio',
    'Cubone',
    'Marowak',
    'Rhyhorn',
    'Rhydon',
    'Aerodactyl',
    'Dratini',
    'Dragonair',
    'Dragonite',
  ];

//============================================================
//=================TIPO ELETRICO==============================
  List<String> listaPerguntasEletrico = [
    'É um pokémon básico?',
    'É o favorito do Ash?',
    'Possui evoluções acima dele?',
    'Consegue voar ou flutuar?',
    'Parece uma pokébola?',
    'Está relacionado ao eevee?',
    'É uma ratazana elétrica né?',
    '',
  ];

  List<String> pokemon_eletrico = [
    'Pikachu',
    'Raichu',
    'Magnemite',
    'Magneton',
    'Voltorb',
    'Electrode',
    'Electabuzz',
    'Jolteon',
    'Zapdos',
  ];

//=============================================================
//=================TIPO FANTASMA ==============================
  List<String> listaPerguntasFantasma = [
    'O pokémon tem mãos?',
    'Tem pernas?',
    '',
  ];

  List<String> pokemon_fantasma = [
    'Gastly',
    'Haunter',
    'Gengar',
  ];

//============================================================
//=================TIPO VENENOSO==============================
  List<String> listaPerguntasVenenoso = [
    'É uma cobra?',
    'É um pokémon básico?',
    'Existem evoluções acima dele?',
    'Ele solta fumaça?',
    'Ele é gosmentinho?',
    'O pokémon é sexista?',
    'O pokémon é fêmea?',
    '',
  ];

  List<String> pokemon_venenoso = [
    'Ekans',
    'Arbok',
    'Nidoran F',
    'Nidorina',
    'Nidoqueen',
    'Nidoran M',
    'Nidorino',
    'Nidoking',
    'Zubat',
    'Golbat',
    'Grimer',
    'Muk',
    'Koffing',
    'Weezing',
  ];

//===========================================================
//=================TIPO LUTADOR==============================
  List<String> listaPerguntasLutador = [
    'Ele tem poderes de água?',
    'É um pokémon básico?',
    'Possui evoluções acima dele?',
    'Ele luta somente com as pernas?',
    'Ele lembra um macaco?',
    '',
  ];

  List<String> pokemon_lutador = [
    'Mankey',
    'Primeape',
    'Poliwrath',
    'Machop',
    'Machoke',
    'Machamp',
    'Hitmonlee',
    'Hitmonchan',
  ];

//========================================================
//=================TIPO PEDRA==============================
  List<String> listaPerguntasPedra = [
    'O pokémon é pré-histórico?',
    'É um pokémon básico?',
    'Possui evoluções acima dele?',
    'Tem um chifre?',
    'Parece uma cobra?',
    'Tem partes azuis no corpo?',
    '',
  ];

  List<String> pokemon_pedra = [
    'Geodude',
    'Graveler',
    'Golem',
    'Onix',
    'Rhyhorn',
    'Rhydon',
    'Omanyte',
    'Omastar',
    'Kabuto',
    'Kabutops',
    'Aerodactyl',
  ];

//===========================================================
//=================TIPO PSIQUICO==============================
  List<String> listaPerguntasPsiquico = [
    'Ele é um clone?',
    'Ele foi clonado?',
    'É um pokémon básico?',
    'Ele é rosa?',
    'Compartilha o tipo grama?',
    'É um pato?',
    'Ele é mímico?',
    'Parece uma mulher?',
    'É uma última evolução?',
    'Vive sujo de lama?',
    'É uma estrela do mar?',
    'Ele come de colher?',
    '',
  ];

  List<String> pokemon_psiquico = [
    'Abra',
    'Kadabra',
    'Alakazam',
    'Slowpoke',
    'Slowbro',
    'Drowzee',
    'Hypno',
    'Exeggcute',
    'Exeggutor',
    'Starmie',
    'Golduck',
    'Mr. Mime',
    'Jynx',
    'Mewtwo',
    'Mew',
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
      if (pokemon_fogo.length == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              'Parabéns esse pokémon não existe!',
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
      if (pokemon_agua.length == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              'Parabéns esse pokémon não existe!',
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
      if (pokemon_grama.length == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              'Parabéns esse pokémon não existe!',
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
      if (pokemon_normal.length == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              'Parabéns esse pokémon não existe!',
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
      if (pokemon_eletrico.length == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              'Parabéns esse pokémon não existe!',
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
      if (pokemon_fantasma.length == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              'Parabéns esse pokémon não existe!',
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
      if (pokemon_venenoso.length == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              'Parabéns esse pokémon não existe!',
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
      if (pokemon_lutador.length == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              'Parabéns esse pokémon não existe!',
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
      if (pokemon_pedra.length == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              'Parabéns esse pokémon não existe!',
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
      if (pokemon_psiquico.length == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resposta(
              'Parabéns esse pokémon não existe!',
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

        pokemon_fogo.removeWhere((item) => (item != 'Charmander' &&
            item != 'Vulpix' &&
            item != 'Growlithe' &&
            item != 'Ponyta' &&
            item != 'Magmar' &&
            item != 'Moltres'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 1) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Charmander'));
        pokemon_fogo.removeWhere((item) => (item == 'Vulpix'));
        pokemon_fogo.removeWhere((item) => (item == 'Growlithe'));
        pokemon_fogo.removeWhere((item) => (item == 'Ponyta'));
        pokemon_fogo.removeWhere((item) => (item == 'Magmar'));
        pokemon_fogo.removeWhere((item) => (item == 'Moltres'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 2) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item != 'Vulpix' &&
            item != 'Ninetales' &&
            item != 'Growlithe' &&
            item != 'Arcanine' &&
            item != 'Ponyta' &&
            item != 'Rapidash' &&
            item != 'Flareon'));
        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 2) {
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

      //===========RESPOSTA PARA A TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 3) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item != 'Charmander' &&
            item != 'Charmeleon' &&
            item != 'Vulpix' &&
            item != 'Growlithe' &&
            item != 'Ponyta'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 3) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Charmander'));
        pokemon_fogo.removeWhere((item) => (item == 'Charmeleon'));
        pokemon_fogo.removeWhere((item) => (item == 'Vulpix'));
        pokemon_fogo.removeWhere((item) => (item == 'Growlithe'));
        pokemon_fogo.removeWhere((item) => (item == 'Ponyta'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 4) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item != 'Charizard'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 4) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Charizard'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 5) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo
            .removeWhere((item) => (item != 'Moltres' && item != 'Charizard'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 5) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Moltres'));
        pokemon_fogo.removeWhere((item) => (item == 'Charizard'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SEXTA PERGUNTA=========
      if (resposta == 'sim' && aux == 6) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo
            .removeWhere((item) => (item != 'Vulpix' && item != 'Ninetales'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 6) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Vulpix'));
        pokemon_fogo.removeWhere((item) => (item == 'Ninetales'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SETIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 7) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo
            .removeWhere((item) => (item != 'Ponyta' && item != 'Rapidash'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 7) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Ponyta'));
        pokemon_fogo.removeWhere((item) => (item == 'Rapidash'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A OITAVA PERGUNTA=========
      if (resposta == 'sim' && aux == 8) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) =>
            (item != 'Vulpix' && item != 'Ninetales' && item != 'Flareon'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 8) {
        pergunta = listaPerguntasFogo[aux];

        pokemon_fogo.removeWhere((item) => (item == 'Vulpix'));
        pokemon_fogo.removeWhere((item) => (item == 'Ninetales'));
        pokemon_fogo.removeWhere((item) => (item == 'Flareon'));

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

        pokemon_agua.removeWhere((item) => (item != 'Wartortle' &&
            item != 'Poliwhirl' &&
            item != 'Squirtle' &&
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
            item != 'Omanyte' &&
            item != 'Kabuto'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 3) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item != 'Blastoise' &&
            item != 'Golduck' &&
            item != 'Dewgong' &&
            item != 'Kingler' &&
            item != 'Poliwrath' &&
            item != 'Tentacruel' &&
            item != 'Slowbro' &&
            item != 'Cloyster' &&
            item != 'Seadra' &&
            item != 'Seaking' &&
            item != 'Starmie' &&
            item != 'Gyarados' &&
            item != 'Vaporeon' &&
            item != 'Lapras' &&
            item != 'Omastar' &&
            item != 'Kabutops' &&
            item != 'Articuno' &&
            item != 'Jynx'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 4) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item != 'Omanyte' &&
            item != 'Omastar' &&
            item != 'Kabuto' &&
            item != 'Kabutops'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 4) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Omanyte'));
        pokemon_agua.removeWhere((item) => (item == 'Omastar'));
        pokemon_agua.removeWhere((item) => (item == 'Kabuto'));
        pokemon_agua.removeWhere((item) => (item == 'Kabutops'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 5) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua
            .removeWhere((item) => (item != 'Krabby' && item != 'Kingler'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 5) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Krabby'));
        pokemon_agua.removeWhere((item) => (item == 'Kingler'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SEXTA PERGUNTA=========
      if (resposta == 'sim' && aux == 6) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua
            .removeWhere((item) => (item != 'Horsea' && item != 'Seadra'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 6) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Horsea'));
        pokemon_agua.removeWhere((item) => (item == 'Seadra'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SETIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 7) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua
            .removeWhere((item) => (item != 'Kabuto' && item != 'Kabutops'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 7) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Kabuto'));
        pokemon_agua.removeWhere((item) => (item == 'Kabutops'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A OITAVA PERGUNTA=========
      if (resposta == 'sim' && aux == 8) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua
            .removeWhere((item) => (item != 'Staryu' && item != 'Starmie'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 8) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Staryu'));
        pokemon_agua.removeWhere((item) => (item == 'Starmie'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A NONA PERGUNTA=========
      if (resposta == 'sim' && aux == 9) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua
            .removeWhere((item) => (item != 'Shellder' && item != 'Cloyster'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 9) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Shellder'));
        pokemon_agua.removeWhere((item) => (item == 'Cloyster'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 10) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua
            .removeWhere((item) => (item != 'Slowpoke' && item != 'Slowbro'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 10) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Slowpoke'));
        pokemon_agua.removeWhere((item) => (item == 'Slowbro'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 11) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua
            .removeWhere((item) => (item != 'Psyduck' && item != 'Golduck'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 11) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Psyduck'));
        pokemon_agua.removeWhere((item) => (item == 'Golduck'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 12) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item != 'Articuno'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 12) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Articuno'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 13) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item != 'Gyarados'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 13) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Gyarados'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 14) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua
            .removeWhere((item) => (item != 'Seel' && item != 'Dewgong'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 14) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Seel'));
        pokemon_agua.removeWhere((item) => (item == 'Dewgong'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 15) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item != 'Lapras'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 15) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Lapras'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA SEXTA PERGUNTA=========
      if (resposta == 'sim' && aux == 16) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) =>
            (item != 'Poliwag' && item != 'Poliwhirl' && item != 'Poliwrath'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 16) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Poliwag'));
        pokemon_agua.removeWhere((item) => (item == 'Poliwhirl'));
        pokemon_agua.removeWhere((item) => (item == 'Poliwrath'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA SETIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 17) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item != 'Vaporeon'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 17) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Vaporeon'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA OITAVA PERGUNTA=========
      if (resposta == 'sim' && aux == 18) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item != 'Magikarp'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 18) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Magikarp'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA NONA PERGUNTA=========
      if (resposta == 'sim' && aux == 19) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua
            .removeWhere((item) => (item != 'Goldeen' && item != 'Seaking'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 19) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Goldeen'));
        pokemon_agua.removeWhere((item) => (item == 'Seaking'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A VIGESIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 20) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere(
            (item) => (item != 'Tentacool' && item != 'Tentacruel'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 20) {
        pergunta = listaPerguntasAgua[aux];

        pokemon_agua.removeWhere((item) => (item == 'Tentacool'));
        pokemon_agua.removeWhere((item) => (item == 'Tentacruel'));

        verificarPokemon();
      }
    });
    aux++;
  }

  void tipoGrama(String resposta) {
    setState(() {
      if (resposta == 'primeiro') {
        pergunta = listaPerguntasGrama[aux];
      }

      //===========RESPOSTA PARA A PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 1) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Paras' &&
            item != 'Parasect' &&
            item != 'Venonat' &&
            item != 'Venomoth' &&
            item != 'Caterpie' &&
            item != 'Metapod' &&
            item != 'Butterfree' &&
            item != 'Weedle' &&
            item != 'Kakuna' &&
            item != 'Beedrill' &&
            item != 'Scyther' &&
            item != 'Pinsir'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 1) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Paras'));
        pokemon_grama.removeWhere((item) => (item == 'Parasect'));
        pokemon_grama.removeWhere((item) => (item == 'Venonat'));
        pokemon_grama.removeWhere((item) => (item == 'Venomoth'));
        pokemon_grama.removeWhere((item) => (item == 'Caterpie'));
        pokemon_grama.removeWhere((item) => (item == 'Metapod'));
        pokemon_grama.removeWhere((item) => (item == 'Butterfree'));
        pokemon_grama.removeWhere((item) => (item == 'Weedle'));
        pokemon_grama.removeWhere((item) => (item == 'Kakuna'));
        pokemon_grama.removeWhere((item) => (item == 'Beedrill'));
        pokemon_grama.removeWhere((item) => (item == 'Scyther'));
        pokemon_grama.removeWhere((item) => (item == 'Pinsir'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 2) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Bulbasaur' &&
            item != 'Oddish' &&
            item != 'Paras' &&
            item != 'Venonat' &&
            item != 'Bellsprout' &&
            item != 'Exeggcute' &&
            item != 'Caterpie' &&
            item != 'Weedle' &&
            item != 'Scyther' &&
            item != 'Pinsir' &&
            item != 'Tangela'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 2) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Bulbasaur'));
        pokemon_grama.removeWhere((item) => (item == 'Oddish'));
        pokemon_grama.removeWhere((item) => (item == 'Paras'));
        pokemon_grama.removeWhere((item) => (item == 'Venonat'));
        pokemon_grama.removeWhere((item) => (item == 'Bellsprout'));
        pokemon_grama.removeWhere((item) => (item == 'Exeggcute'));
        pokemon_grama.removeWhere((item) => (item == 'Caterpie'));
        pokemon_grama.removeWhere((item) => (item == 'Weedle'));
        pokemon_grama.removeWhere((item) => (item == 'Scyther'));
        pokemon_grama.removeWhere((item) => (item == 'Pinsir'));
        pokemon_grama.removeWhere((item) => (item == 'Tangela'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 3) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Bulbasaur' &&
            item != 'Ivysaur' &&
            item != 'Oddish' &&
            item != 'Gloom' &&
            item != 'Paras' &&
            item != 'Venonat' &&
            item != 'Bellsprout' &&
            item != 'Weepinbell' &&
            item != 'Exeggcute' &&
            item != 'Caterpie' &&
            item != 'Metapod' &&
            item != 'Weedle' &&
            item != 'Kakuna'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 3) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Venusaur' &&
            item != 'Vileplume' &&
            item != 'Parasect' &&
            item != 'Venomoth' &&
            item != 'Tangela' &&
            item != 'Victreebel' &&
            item != 'Exeggutor' &&
            item != 'Butterfree' &&
            item != 'Beedrill' &&
            item != 'Scyther' &&
            item != 'Pinsir'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 4) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Bulbasaur' &&
            item != 'Ivysaur' &&
            item != 'Venusaur' &&
            item != 'Scyther' &&
            item != 'Caterpie' &&
            item != 'Metapod'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 4) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Bulbasaur'));
        pokemon_grama.removeWhere((item) => (item == 'Ivysaur'));
        pokemon_grama.removeWhere((item) => (item == 'Venusaur'));
        pokemon_grama.removeWhere((item) => (item == 'Scyther'));
        pokemon_grama.removeWhere((item) => (item == 'Caterpie'));
        pokemon_grama.removeWhere((item) => (item == 'Metapod'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 5) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) =>
            (item != 'Bulbasaur' && item != 'Ivysaur' && item != 'Venusaur'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 5) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Bulbasaur'));
        pokemon_grama.removeWhere((item) => (item == 'Ivysaur'));
        pokemon_grama.removeWhere((item) => (item == 'Venusaur'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SEXTA PERGUNTA=========
      if (resposta == 'sim' && aux == 6) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama
            .removeWhere((item) => (item != 'Metapod' && item != 'Kakuna'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 6) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Metapod'));
        pokemon_grama.removeWhere((item) => (item == 'Kakuna'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A SETIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 7) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Butterfree'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 7) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Butterfree'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A OITAVA PERGUNTA=========
      if (resposta == 'sim' && aux == 8) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Beedrill'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 8) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Beedrill'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A NONA PERGUNTA=========
      if (resposta == 'sim' && aux == 9) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Victreebel'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 9) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Victreebel'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A DECIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 10) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) =>
            (item != 'Venonat' && item != 'Butterfree' && item != 'Beedrill'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 10) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Venonat'));
        pokemon_grama.removeWhere((item) => (item == 'Butterfree'));
        pokemon_grama.removeWhere((item) => (item == 'Beedrill'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A DECIMA PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 11) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Butterfree' &&
            item != 'Beedrill' &&
            item != 'Scyther' &&
            item != 'Venomoth'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 11) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Butterfree'));
        pokemon_grama.removeWhere((item) => (item == 'Beedrill'));
        pokemon_grama.removeWhere((item) => (item == 'Scyther'));
        pokemon_grama.removeWhere((item) => (item == 'Venomoth'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 12) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Butterfree' &&
            item != 'Exeggcute' &&
            item != 'Exeggutor'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 12) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Exeggcute'));
        pokemon_grama.removeWhere((item) => (item == 'Exeggutor'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 13) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Bellsprout'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 13) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Bellsprout'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 14) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Oddish' &&
            item != 'Gloom' &&
            item != 'Vileplume' &&
            item != 'Tangela' &&
            item != 'Exeggutor' &&
            item != 'Scyther' &&
            item != 'Pinsir' &&
            item != 'Venonat'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 14) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Oddish'));
        pokemon_grama.removeWhere((item) => (item == 'Gloom'));
        pokemon_grama.removeWhere((item) => (item == 'Vileplume'));
        pokemon_grama.removeWhere((item) => (item == 'Tangela'));
        pokemon_grama.removeWhere((item) => (item == 'Exeggutor'));
        pokemon_grama.removeWhere((item) => (item == 'Scyther'));
        pokemon_grama.removeWhere((item) => (item == 'Pinsir'));
        pokemon_grama.removeWhere((item) => (item == 'Venonat'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 15) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Tangela'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 15) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Tangela'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A DECIMA SEXTA PERGUNTA=========
      if (resposta == 'sim' && aux == 16) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item != 'Paras'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 16) {
        pergunta = listaPerguntasGrama[aux];

        pokemon_grama.removeWhere((item) => (item == 'Paras'));

        verificarPokemon();
      }
    });
    aux++;
  }

  void tipoNormal(String resposta) {
    setState(() {
      if (resposta == 'primeiro') {
        pergunta = listaPerguntasNormal[aux];
      }

      //===========RESPOSTA PARA A PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 1) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item != 'Pidgey' &&
            item != 'Rattata' &&
            item != 'Spearow' &&
            item != 'Clefairy' &&
            item != 'Jigglypuff' &&
            item != 'Meowth' &&
            item != 'Farfetchd' &&
            item != 'Doduo' &&
            item != 'Licktung' &&
            item != 'Chansey' &&
            item != 'Kangaskhan' &&
            item != 'Tauros' &&
            item != 'Ditto' &&
            item != 'Eevee' &&
            item != 'Porygon' &&
            item != 'Snorlax' &&
            item != 'Sandshrew' &&
            item != 'Diglett' &&
            item != 'Cubone' &&
            item != 'Rhyhorn' &&
            item != 'Dratini' &&
            item != 'Mr. Mime' &&
            item != 'Aerodactyl'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 1) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Aerodactyl'));
        pokemon_normal.removeWhere((item) => (item == 'Pidgey'));
        pokemon_normal.removeWhere((item) => (item == 'Rattata'));
        pokemon_normal.removeWhere((item) => (item == 'Spearow'));
        pokemon_normal.removeWhere((item) => (item == 'Clefairy'));
        pokemon_normal.removeWhere((item) => (item == 'Jigglypuff'));
        pokemon_normal.removeWhere((item) => (item == 'Meowth'));
        pokemon_normal.removeWhere((item) => (item == 'Farfetchd'));
        pokemon_normal.removeWhere((item) => (item == 'Doduo'));
        pokemon_normal.removeWhere((item) => (item == 'Licktung'));
        pokemon_normal.removeWhere((item) => (item == 'Chansey'));
        pokemon_normal.removeWhere((item) => (item == 'Kangaskhan'));
        pokemon_normal.removeWhere((item) => (item == 'Tauros'));
        pokemon_normal.removeWhere((item) => (item == 'Ditto'));
        pokemon_normal.removeWhere((item) => (item == 'Eevee'));
        pokemon_normal.removeWhere((item) => (item == 'Porygon'));
        pokemon_normal.removeWhere((item) => (item == 'Snorlax'));
        pokemon_normal.removeWhere((item) => (item == 'Diglett'));
        pokemon_normal.removeWhere((item) => (item == 'Cubone'));
        pokemon_normal.removeWhere((item) => (item == 'Rhyhorn'));
        pokemon_normal.removeWhere((item) => (item == 'Dratini'));
        pokemon_normal.removeWhere((item) => (item == 'Sandshrew'));
        pokemon_normal.removeWhere((item) => (item == 'Mr. Mime'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 2) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item != 'Pidgey' &&
            item != 'Pidgeotto' &&
            item != 'Dragonair' &&
            item != 'Rattata' &&
            item != 'Spearow' &&
            item != 'Clefairy' &&
            item != 'Jigglypuff' &&
            item != 'Meowth' &&
            item != 'Doduo' &&
            item != 'Eevee' &&
            item != 'Sandshrew' &&
            item != 'Diglett' &&
            item != 'Cubone' &&
            item != 'Rhyhorn' &&
            item != 'Dratini'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 2) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Pidgey'));
        pokemon_normal.removeWhere((item) => (item == 'Pidgeotto'));
        pokemon_normal.removeWhere((item) => (item == 'Dragonair'));
        pokemon_normal.removeWhere((item) => (item == 'Rattata'));
        pokemon_normal.removeWhere((item) => (item == 'Spearow'));
        pokemon_normal.removeWhere((item) => (item == 'Clefairy'));
        pokemon_normal.removeWhere((item) => (item == 'Jigglypuff'));
        pokemon_normal.removeWhere((item) => (item == 'Meowth'));
        pokemon_normal.removeWhere((item) => (item == 'Doduo'));
        pokemon_normal.removeWhere((item) => (item == 'Eevee'));
        pokemon_normal.removeWhere((item) => (item == 'Sandshrew'));
        pokemon_normal.removeWhere((item) => (item == 'Diglett'));
        pokemon_normal.removeWhere((item) => (item == 'Cubone'));
        pokemon_normal.removeWhere((item) => (item == 'Rhyhorn'));
        pokemon_normal.removeWhere((item) => (item == 'Dratini'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 3) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item != 'Pidgey' &&
            item != 'Pidgeotto' &&
            item != 'Pidgeot' &&
            item != 'Dratini' &&
            item != 'Dragonair' &&
            item != 'Dragonite' &&
            item != 'Spearow' &&
            item != 'Fearow' &&
            item != 'Clefairy' &&
            item != 'Clefable' &&
            item != 'Doduo' &&
            item != 'Dodrio' &&
            item != 'Porygon' &&
            item != 'Aerodactyl' &&
            item != 'Farfetchd'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 3) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Farfetchd'));
        pokemon_normal.removeWhere((item) => (item == 'Aerodactyl'));
        pokemon_normal.removeWhere((item) => (item == 'Pidgey'));
        pokemon_normal.removeWhere((item) => (item == 'Pidgeotto'));
        pokemon_normal.removeWhere((item) => (item == 'Pidgeot'));
        pokemon_normal.removeWhere((item) => (item == 'Dratini'));
        pokemon_normal.removeWhere((item) => (item == 'Dragonair'));
        pokemon_normal.removeWhere((item) => (item == 'Dragonair'));
        pokemon_normal.removeWhere((item) => (item == 'Spearow'));
        pokemon_normal.removeWhere((item) => (item == 'Fearow'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 4) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item != 'Dratini' &&
            item != 'Dragonair' &&
            item != 'Dragonite' &&
            item != 'Aerodactyl'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 4) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Dratini'));
        pokemon_normal.removeWhere((item) => (item == 'Dragonair'));
        pokemon_normal.removeWhere((item) => (item == 'Dragonite'));
        pokemon_normal.removeWhere((item) => (item == 'Aerodactyl'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 5) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal
            .removeWhere((item) => (item != 'Doduo' && item != 'Dodrio'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 5) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Doduo'));
        pokemon_normal.removeWhere((item) => (item == 'Dodrio'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SEXTA PERGUNTA=========
      if (resposta == 'sim' && aux == 6) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item != 'Rattata' &&
            item != 'Clefairy' &&
            item != 'Clefable' &&
            item != 'Jigglypuff' &&
            item != 'Wigglytuff' &&
            item != 'Licktung' &&
            item != 'Chansey' &&
            item != 'Ditto' &&
            item != 'Mr. Mime' &&
            item != 'Porygon'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 6) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Rattata'));
        pokemon_normal.removeWhere((item) => (item == 'Clefairy'));
        pokemon_normal.removeWhere((item) => (item == 'Clefable'));
        pokemon_normal.removeWhere((item) => (item == 'Jigglypuff'));
        pokemon_normal.removeWhere((item) => (item == 'Wigglytuff'));
        pokemon_normal.removeWhere((item) => (item == 'Licktung'));
        pokemon_normal.removeWhere((item) => (item == 'Chansey'));
        pokemon_normal.removeWhere((item) => (item == 'Ditto'));
        pokemon_normal.removeWhere((item) => (item == 'Mr. Mime'));
        pokemon_normal.removeWhere((item) => (item == 'Porygon'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A SETIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 7) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item != 'Porygon'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 7) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Porygon'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A OITAVA PERGUNTA=========
      if (resposta == 'sim' && aux == 8) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item != 'Chansey'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 8) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Chansey'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A NONA PERGUNTA=========
      if (resposta == 'sim' && aux == 9) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item != 'Ditto'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 9) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Ditto'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 10) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item != 'Snorlax'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 10) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Snorlax'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 11) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal
            .removeWhere((item) => (item != 'Meowth' && item != 'Persian'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 11) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Meowth'));
        pokemon_normal.removeWhere((item) => (item == 'Persian'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 12) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal
            .removeWhere((item) => (item != 'Cubone' && item != 'Marowak'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 12) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Cubone'));
        pokemon_normal.removeWhere((item) => (item == 'Marowak'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 13) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) =>
            (item != 'Rhyhorn' && item != 'Rhydon' && item != 'Tauros'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 13) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Rhyhorn'));
        pokemon_normal.removeWhere((item) => (item == 'Rhydon'));
        pokemon_normal.removeWhere((item) => (item == 'Tauros'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 14) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item != 'Mr. Mime'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 14) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Mr. Mime'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 15) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere(
            (item) => (item != 'Sandshrew' && item != 'Sandslash'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 15) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Sandshrew'));
        pokemon_normal.removeWhere((item) => (item == 'Sandslash'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA SEXTA PERGUNTA=========
      if (resposta == 'sim' && aux == 16) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal
            .removeWhere((item) => (item != 'Diglett' && item != 'Dugtrio'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 16) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Diglett'));
        pokemon_normal.removeWhere((item) => (item == 'Dugtrio'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A DECIMA SETIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 17) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere(
            (item) => (item != 'Jigglypuff' && item != 'Wigglytuff'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 17) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Jigglypuff'));
        pokemon_normal.removeWhere((item) => (item == 'Wigglytuff'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A DECIMA OITAVA PERGUNTA=========
      if (resposta == 'sim' && aux == 18) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item != 'Rattata'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 18) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Rattata'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A DECIMA NONA PERGUNTA=========
      if (resposta == 'sim' && aux == 19) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal
            .removeWhere((item) => (item != 'Pidgey' && item != 'Pidgeot'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 19) {
        pergunta = listaPerguntasNormal[aux];

        pokemon_normal.removeWhere((item) => (item == 'Pidgey'));
        pokemon_normal.removeWhere((item) => (item == 'Pidgeot'));

        verificarPokemon();
      }
    });
    aux++;
  }

  void tipoEletrico(String resposta) {
    setState(() {
      if (resposta == 'primeiro') {
        pergunta = listaPerguntasEletrico[aux];
      }

      //===========RESPOSTA PARA A PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 1) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) => (item != 'Pikachu' &&
            item != 'Magnemite' &&
            item != 'Voltorb' &&
            item != 'Electabuzz' &&
            item != 'Zapdos'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 1) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) => (item == 'Pikachu'));
        pokemon_eletrico.removeWhere((item) => (item == 'Magnemite'));
        pokemon_eletrico.removeWhere((item) => (item == 'Voltorb'));
        pokemon_eletrico.removeWhere((item) => (item == 'Electabuzz'));
        pokemon_eletrico.removeWhere((item) => (item == 'Zapdos'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 2) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) => (item != 'Pikachu'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 2) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) => (item == 'Pikachu'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 3) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) =>
            (item != 'Pikachu' && item != 'Magnemite' && item != 'Voltorb'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 3) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) => (item == 'Pikachu'));
        pokemon_eletrico.removeWhere((item) => (item == 'Magnemite'));
        pokemon_eletrico.removeWhere((item) => (item == 'Voltorb'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 4) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) =>
            (item != 'Magnemite' && item != 'Magneton' && item != 'Zapdos'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 4) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) => (item == 'Magnemite'));
        pokemon_eletrico.removeWhere((item) => (item == 'Magneton'));
        pokemon_eletrico.removeWhere((item) => (item == 'Zapdos'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 5) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico
            .removeWhere((item) => (item != 'Voltorb' && item != 'Electrode'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 5) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) => (item == 'Voltorb'));
        pokemon_eletrico.removeWhere((item) => (item == 'Electrode'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SEXTA PERGUNTA=========
      if (resposta == 'sim' && aux == 6) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) => (item != 'Jolteon'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 6) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) => (item == 'Jolteon'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SETIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 7) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) => (item != 'Raichu'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 7) {
        pergunta = listaPerguntasEletrico[aux];

        pokemon_eletrico.removeWhere((item) => (item == 'Raichu'));

        verificarPokemon();
      }
    });
    aux++;
  }

  void tipoFantasma(String resposta) {
    setState(() {
      if (resposta == 'primeiro') {
        pergunta = listaPerguntasFantasma[aux];
      }

      //===========RESPOSTA PARA A PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 1) {
        pergunta = listaPerguntasFantasma[aux];

        pokemon_fantasma
            .removeWhere((item) => (item != 'Haunter' && item != 'Gengar'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 1) {
        pergunta = listaPerguntasFantasma[aux];

        pokemon_fantasma.removeWhere((item) => (item == 'Haunter'));
        pokemon_fantasma.removeWhere((item) => (item == 'Gengar'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 2) {
        pergunta = listaPerguntasFantasma[aux];

        pokemon_fantasma.removeWhere((item) => (item != 'Gengar'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 2) {
        pergunta = listaPerguntasFantasma[aux];

        pokemon_fantasma.removeWhere((item) => (item == 'Gengar'));

        verificarPokemon();
      }
    });
    aux++;
  }

  void tipoVenenoso(String resposta) {
    setState(() {
      if (resposta == 'primeiro') {
        pergunta = listaPerguntasVenenoso[aux];
      }

      //===========RESPOSTA PARA A PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 1) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso
            .removeWhere((item) => (item != 'Ekans' && item != 'Arbok'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 1) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso.removeWhere((item) => (item == 'Ekans'));
        pokemon_venenoso.removeWhere((item) => (item == 'Arbok'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 2) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso.removeWhere((item) => (item != 'Ekans' &&
            item != 'Nidoran F' &&
            item != 'Nidoran M' &&
            item != 'Zubat' &&
            item != 'Grimer' &&
            item != 'Koffing'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 2) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso.removeWhere((item) => (item == 'Ekans'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidoran F'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidoran M'));
        pokemon_venenoso.removeWhere((item) => (item == 'Zubat'));
        pokemon_venenoso.removeWhere((item) => (item == 'Grimer'));
        pokemon_venenoso.removeWhere((item) => (item == 'Koffing'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 3) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso.removeWhere((item) => (item != 'Ekans' &&
            item != 'Nidoran F' &&
            item != 'Nidoran M' &&
            item != 'Nidorina' &&
            item != 'Nidorino' &&
            item != 'Zubat' &&
            item != 'Grimer' &&
            item != 'Koffing'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 3) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso.removeWhere((item) => (item == 'Ekans'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidoran F'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidoran M'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidorina'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidorino'));
        pokemon_venenoso.removeWhere((item) => (item == 'Zubat'));
        pokemon_venenoso.removeWhere((item) => (item == 'Grimer'));
        pokemon_venenoso.removeWhere((item) => (item == 'Koffing'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 4) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso
            .removeWhere((item) => (item != 'Koffing' && item != 'Weezing'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 4) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso.removeWhere((item) => (item == 'Koffing'));
        pokemon_venenoso.removeWhere((item) => (item == 'Weezing'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 5) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso
            .removeWhere((item) => (item != 'Grimer' && item != 'Muk'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 5) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso.removeWhere((item) => (item == 'Grimer'));
        pokemon_venenoso.removeWhere((item) => (item == 'Muk'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SEXTA PERGUNTA=========
      if (resposta == 'sim' && aux == 6) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso.removeWhere((item) => (item != 'Nidoran F' &&
            item != 'Nidoran M' &&
            item != 'Nidorina' &&
            item != 'Nidorino' &&
            item != 'Nidoqueen' &&
            item != 'Nidoking'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 6) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso.removeWhere((item) => (item == 'Nidoran F'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidoran M'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidorina'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidorino'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidoqueen'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidoking'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SETIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 7) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso.removeWhere((item) =>
            (item != 'Nidoran F' && item != 'Nidorina' && item != 'Nidoqueen'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 7) {
        pergunta = listaPerguntasVenenoso[aux];

        pokemon_venenoso.removeWhere((item) => (item == 'Nidoran F'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidorina'));
        pokemon_venenoso.removeWhere((item) => (item == 'Nidoqueen'));

        verificarPokemon();
      }
    });
    aux++;
  }

  void tipoLutador(String resposta) {
    setState(() {
      if (resposta == 'primeiro') {
        pergunta = listaPerguntasLutador[aux];
      }

      //===========RESPOSTA PARA A PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 1) {
        pergunta = listaPerguntasLutador[aux];

        pokemon_lutador.removeWhere((item) => (item != 'Poliwrath'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 1) {
        pergunta = listaPerguntasLutador[aux];

        pokemon_lutador.removeWhere((item) => (item == 'Poliwrath'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 2) {
        pergunta = listaPerguntasLutador[aux];

        pokemon_lutador.removeWhere((item) => (item != 'Mankey' &&
            item != 'Machop' &&
            item != 'Hitmonlee' &&
            item != 'Hitmonchan'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 2) {
        pergunta = listaPerguntasLutador[aux];

        pokemon_lutador.removeWhere((item) => (item == 'Mankey'));
        pokemon_lutador.removeWhere((item) => (item == 'Machop'));
        pokemon_lutador.removeWhere((item) => (item == 'Hitmonlee'));
        pokemon_lutador.removeWhere((item) => (item == 'Hitmonchan'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 3) {
        pergunta = listaPerguntasLutador[aux];

        pokemon_lutador.removeWhere((item) =>
            (item != 'Mankey' && item != 'Machop' && item != 'Machoke'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 3) {
        pergunta = listaPerguntasLutador[aux];

        pokemon_lutador.removeWhere((item) => (item == 'Mankey'));
        pokemon_lutador.removeWhere((item) => (item == 'Machop'));
        pokemon_lutador.removeWhere((item) => (item == 'Machoke'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 4) {
        pergunta = listaPerguntasLutador[aux];

        pokemon_lutador.removeWhere((item) => (item != 'Hitmonlee'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 4) {
        pergunta = listaPerguntasLutador[aux];

        pokemon_lutador.removeWhere((item) => (item == 'Hitmonlee'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 5) {
        pergunta = listaPerguntasLutador[aux];

        pokemon_lutador
            .removeWhere((item) => (item != 'Mankey' && item != 'Primeape'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 5) {
        pergunta = listaPerguntasLutador[aux];

        pokemon_lutador.removeWhere((item) => (item == 'Mankey'));
        pokemon_lutador.removeWhere((item) => (item == 'Primeape'));

        verificarPokemon();
      }
    });
    aux++;
  }

  void tipoPedra(String resposta) {
    setState(() {
      if (resposta == 'primeiro') {
        pergunta = listaPerguntasPedra[aux];
      }

      //===========RESPOSTA PARA A PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 1) {
        pergunta = listaPerguntasPedra[aux];

        pokemon_pedra.removeWhere((item) => (item != 'Omanyte' &&
            item != 'Omastar' &&
            item != 'Kabuto' &&
            item != 'Kabutops' &&
            item != 'Aerodactyl'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 1) {
        pergunta = listaPerguntasPedra[aux];

        pokemon_pedra.removeWhere((item) => (item == 'Omanyte'));
        pokemon_pedra.removeWhere((item) => (item == 'Omastar'));
        pokemon_pedra.removeWhere((item) => (item == 'Kabuto'));
        pokemon_pedra.removeWhere((item) => (item == 'Kabutops'));
        pokemon_pedra.removeWhere((item) => (item == 'Aerodactyl'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 2) {
        pergunta = listaPerguntasPedra[aux];

        pokemon_pedra.removeWhere((item) => (item != 'Geodude' &&
            item != 'Onix' &&
            item != 'Rhyhorn' &&
            item != 'Omanyte' &&
            item != 'Kabuto' &&
            item != 'Aerodactyl'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 2) {
        pergunta = listaPerguntasPedra[aux];

        pokemon_pedra.removeWhere((item) => (item == 'Geodude'));
        pokemon_pedra.removeWhere((item) => (item == 'Onix'));
        pokemon_pedra.removeWhere((item) => (item == 'Rhyhorn'));
        pokemon_pedra.removeWhere((item) => (item == 'Omanyte'));
        pokemon_pedra.removeWhere((item) => (item == 'Kabuto'));
        pokemon_pedra.removeWhere((item) => (item == 'Aerodactyl'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 3) {
        pergunta = listaPerguntasPedra[aux];

        pokemon_pedra.removeWhere((item) => (item != 'Geodude' &&
            item != 'Graveler' &&
            item != 'Rhyhorn' &&
            item != 'Omanyte' &&
            item != 'Kabuto'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 3) {
        pergunta = listaPerguntasPedra[aux];

        pokemon_pedra.removeWhere((item) => (item == 'Geodude'));
        pokemon_pedra.removeWhere((item) => (item == 'Graveler'));
        pokemon_pedra.removeWhere((item) => (item == 'Rhyhorn'));
        pokemon_pedra.removeWhere((item) => (item == 'Omanyte'));
        pokemon_pedra.removeWhere((item) => (item == 'Kabuto'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 4) {
        pergunta = listaPerguntasPedra[aux];

        pokemon_pedra
            .removeWhere((item) => (item != 'Rhyhorn' && item != 'Rhydon'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 4) {
        pergunta = listaPerguntasPedra[aux];

        pokemon_pedra.removeWhere((item) => (item == 'Rhyhorn'));
        pokemon_pedra.removeWhere((item) => (item == 'Rhydon'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 5) {
        pergunta = listaPerguntasPedra[aux];

        pokemon_pedra.removeWhere((item) => (item != 'Onix'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 5) {
        pergunta = listaPerguntasPedra[aux];

        pokemon_pedra.removeWhere((item) => (item == 'Onix'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SEXTA PERGUNTA=========
      if (resposta == 'sim' && aux == 6) {
        pergunta = listaPerguntasPedra[aux];

        pokemon_pedra
            .removeWhere((item) => (item != 'Omanyte' && item != 'Omastar'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 6) {
        pergunta = listaPerguntasPedra[aux];

        pokemon_pedra.removeWhere((item) => (item == 'Omanyte'));
        pokemon_pedra.removeWhere((item) => (item == 'Omastar'));

        verificarPokemon();
      }
    });
    aux++;
  }

  void tipoPsiquico(String resposta) {
    setState(() {
      if (resposta == 'primeiro') {
        pergunta = listaPerguntasPsiquico[aux];
      }

      //===========RESPOSTA PARA A PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 1) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico
            .removeWhere((item) => (item != 'Paras' && item != 'Mewtwo'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 1) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item == 'Mewtwo'));

        verificarPokemon();
      }
      //===========RESPOSTA PARA A SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 2) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico
            .removeWhere((item) => (item != 'Paras' && item != 'Mew'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 2) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item == 'Mew'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A TERCEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 3) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item != 'Abra' &&
            item != 'Slowpoke' &&
            item != 'Drowzee' &&
            item != 'Exeggcute' &&
            item != 'Mr. Mime' &&
            item != 'Jynx' &&
            item != 'Mewtwo' &&
            item != 'Mew'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 3) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item == 'Abra'));
        pokemon_psiquico.removeWhere((item) => (item == 'Slowpoke'));
        pokemon_psiquico.removeWhere((item) => (item == 'Drowzee'));
        pokemon_psiquico.removeWhere((item) => (item == 'Mr. Mime'));
        pokemon_psiquico.removeWhere((item) => (item == 'Exeggcute'));
        pokemon_psiquico.removeWhere((item) => (item == 'Jynx'));
        pokemon_psiquico.removeWhere((item) => (item == 'Mewtwo'));
        pokemon_psiquico.removeWhere((item) => (item == 'Mew'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUARTA PERGUNTA=========
      if (resposta == 'sim' && aux == 4) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item != 'Slowpoke' &&
            item != 'Slowbro' &&
            item != 'Mew' &&
            item != 'Exeggcute' &&
            item != 'Mr. Mime'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 4) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item == 'Slowpoke'));
        pokemon_psiquico.removeWhere((item) => (item == 'Slowbro'));
        pokemon_psiquico.removeWhere((item) => (item == 'Mew'));
        pokemon_psiquico.removeWhere((item) => (item == 'Exeggcute'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A QUINTA PERGUNTA=========
      if (resposta == 'sim' && aux == 5) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere(
            (item) => (item != 'Exeggcute' && item != 'Exeggutor'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 5) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item == 'Exeggcute'));
        pokemon_psiquico.removeWhere((item) => (item == 'Exeggutor'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SEXTA PERGUNTA=========
      if (resposta == 'sim' && aux == 6) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item != 'Golduck'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 6) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item == 'Golduck'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A SETIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 7) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item != 'Mr. Mime'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 7) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item == 'Mr. Mime'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A OITAVA PERGUNTA=========
      if (resposta == 'sim' && aux == 8) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item != 'Jynx'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 8) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item == 'Jynx'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A NONA PERGUNTA=========
      if (resposta == 'sim' && aux == 9) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item != 'Alakazam' &&
            item != 'Slowbro' &&
            item != 'Hypno' &&
            item != 'Exeggutor' &&
            item != 'Starmie' &&
            item != 'Golduck'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 9) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item == 'Alakazam'));
        pokemon_psiquico.removeWhere((item) => (item == 'Slowbro'));
        pokemon_psiquico.removeWhere((item) => (item == 'Hypno'));
        pokemon_psiquico.removeWhere((item) => (item == 'Exeggutor'));
        pokemon_psiquico.removeWhere((item) => (item == 'Starmie'));
        pokemon_psiquico.removeWhere((item) => (item == 'Golduck'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA PERGUNTA=========
      if (resposta == 'sim' && aux == 10) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item != 'Drowzee'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 10) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item == 'Drowzee'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA PRIMEIRA PERGUNTA=========
      if (resposta == 'sim' && aux == 11) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item != 'Starmie'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 11) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item == 'Starmie'));

        verificarPokemon();
      }

      //===========RESPOSTA PARA A DECIMA SEGUNDA PERGUNTA=========
      if (resposta == 'sim' && aux == 12) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item != 'Alakazam'));

        verificarPokemon();
      }
      if (resposta == 'nao' && aux == 12) {
        pergunta = listaPerguntasPsiquico[aux];

        pokemon_psiquico.removeWhere((item) => (item == 'Alakazam'));

        verificarPokemon();
      }
    });
    aux++;
  }

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
