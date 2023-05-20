

import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
   int contador = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Calculadora básica'),
        ),
        elevation: 0,
      ),
      body:  Column(
        children: [
          Column(
            children: [
              campoSuma(),
            ],
          ),
        ],
      ),
   
      
    );
    
  }
}


Widget campoSuma() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        child: Column(
          children: const[
            Text('Suma'),
            Row(
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Numero uno",
                      fillColor: Colors.black45
                    ),
                  ),
                )
              ],
            ),
            Text('Resultado:')
          ],
          ),
      ),
      Container(
        child: Column(
          children: const[
            Text('Resta'),
            Row(
              children: [
                Text('Numero uno'), 
                Text('Numero dos')
              ],
            ),
            Text('Resultado:')
          ],
          ),
      )
    ],
  );
}
