

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
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text('Suma'),
              Row(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Suma",
                    ),
                  ),
                  Text('Texto2')
                ],
              ),
            ],
          ),
          
          Column (
             children: [
              Text('Resta')
            ]
          )
        ],
      ),
    );
    
  }
}

