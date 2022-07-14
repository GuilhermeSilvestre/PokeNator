import 'package:flutter/material.dart';

const tituloApp = Text(
  'POKÉNATOR',
  style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xfffce205),
    fontSize: 22,
    shadows: [
      Shadow(
          // bottomLeft
          offset: Offset(-1.5, -1.5),
          color: Colors.blueAccent),
      Shadow(
          // bottomRight
          offset: Offset(1.5, -1.5),
          color: Colors.blueAccent),
      Shadow(
          // topRight
          offset: Offset(1.5, 1.5),
          color: Colors.blueAccent),
      Shadow(
          // topLeft
          offset: Offset(-1.5, 1.5),
          color: Colors.blueAccent),
    ],
  ),
);

const mensagemInicial = Text(
  'Eu vou descobrir o pokémon que você está pensando!\n\nLembre-se, vale apenas os 151 da primeira geração!\n\nLeia o disclaimer para começar!',
  textAlign: TextAlign.center,
  style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xff9F2B68),
    fontSize: 30,
    shadows: [
      Shadow(
          // bottomLeft
          offset: Offset(-1.5, -1.5),
          color: Colors.white),
      Shadow(
          // bottomRight
          offset: Offset(1.5, -1.5),
          color: Colors.white),
      Shadow(
          // topRight
          offset: Offset(1.5, 1.5),
          color: Colors.white),
      Shadow(
          // topLeft
          offset: Offset(-1.5, 1.5),
          color: Colors.white),
    ],
  ),
);

const disclaimerMessage = Text(
  'Para jogar esse jogo considere o seguinte:\n\nEm caso do pokémon ter 2 tipos, sempre levaremos em consideração o tipo \"predominante\".\n\nNão existe tipo gelo, considere apenas água.\n\nNão existe tipo inseto, considere apenas grama.\n\nNão existe tipo fada,terra e dragão considere sempre normal.\n\nSó consideramos tipo venenoso, os pokémon que são exclusivamente esse tipo. Por exemplo: se  o pokémon for do tipo água e venenoso, consideramos tipo água.\n\nA única excessão da regra acima, são pokémon tipo venenoso e terra. Nesse caso consideramos o pokémon como sendo venenoso pois descartamos do jogo o tipo terra.\n\nOs tipos de pokémon utilizados no jogo são:\nElétrico, Grama, Fogo, Água, psiquico, normal, pedra, lutador, fantasma e venenoso.',
  textAlign: TextAlign.center,
  style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xff9F2B68),
    fontSize: 18,
    shadows: [
      Shadow(
          // bottomLeft
          offset: Offset(-1.5, -1.5),
          color: Colors.white),
      Shadow(
          // bottomRight
          offset: Offset(1.5, -1.5),
          color: Colors.white),
      Shadow(
          // topRight
          offset: Offset(1.5, 1.5),
          color: Colors.white),
      Shadow(
          // topLeft
          offset: Offset(-1.5, 1.5),
          color: Colors.white),
    ],
  ),
);

const estiloPoke = TextStyle(
  fontWeight: FontWeight.bold,
  color: Color(0xff9F2B68),
  fontSize: 25,
  shadows: [
    Shadow(
        // bottomLeft
        offset: Offset(-1.5, -1.5),
        color: Colors.white),
    Shadow(
        // bottomRight
        offset: Offset(1.5, -1.5),
        color: Colors.white),
    Shadow(
        // topRight
        offset: Offset(1.5, 1.5),
        color: Colors.white),
    Shadow(
        // topLeft
        offset: Offset(-1.5, 1.5),
        color: Colors.white),
  ],
);

const estiloPokeResp = TextStyle(
  fontWeight: FontWeight.bold,
  color: Color(0xfffce205),
  fontSize: 50,
  shadows: [
    Shadow(
// bottomLeft
        offset: Offset(-1.5, -1.5),
        color: Colors.blueAccent),
    Shadow(
// bottomRight
        offset: Offset(1.5, -1.5),
        color: Colors.blueAccent),
    Shadow(
// topRight
        offset: Offset(1.5, 1.5),
        color: Colors.blueAccent),
    Shadow(
// topLeft
        offset: Offset(-1.5, 1.5),
        color: Colors.blueAccent),
  ],
);
