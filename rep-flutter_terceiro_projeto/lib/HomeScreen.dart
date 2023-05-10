import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int valor_dado = 0;
  void sortearNumero() {
    setState(() {
      valor_dado = Random().nextInt(20)+1 ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 36,
            ),
            Text('Jogue os dados e tente a sorte'),
            SizedBox(
              height: 100,
            ),
            Image.asset('assets/images/dado.png'),
            SizedBox(
              height: 100,
            ),
            AutoSizeText(
              'O número sorteado foi: $valor_dado',
              style: TextStyle(fontSize: 20),
              maxLines: 2,
            ),
            SizedBox(
              height: 36,
            ),
            ElevatedButton(onPressed: sortearNumero, child: Text('Jogar'))
          ],
        ),
      ),
    );
  }
}
