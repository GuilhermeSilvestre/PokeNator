import 'package:flutter/material.dart';
import 'package:pokinator/perguntas.dart';
import 'package:pokinator/perguntas2.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokéNator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
        Perguntas.id: (context) => Perguntas(),
        //Perguntas2.id: (context) => Perguntas2(0),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const String id = "home";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int disclaimer = 0;

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
        decoration: BoxDecoration(
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
                SizedBox(
                  height: 20,
                ),
                if (disclaimer == 1) disclaimerMessage,
                if (disclaimer == 0) mensagemInicial,
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                if (disclaimer == 0)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        disclaimer = 1;
                      });
                    },
                    child: const Text('DISCLAIMER'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(185, 80),
                      elevation: 4,
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                if (disclaimer == 1)
                  SizedBox(
                    height: 20,
                  ),
                if (disclaimer == 1)
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Perguntas.id);
                    },
                    child: const Text('COMEÇAR!'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(225, 100),
                      elevation: 4,
                      textStyle: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
