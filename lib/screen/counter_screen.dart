

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
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children:  [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: FractionallySizedBox(
                        widthFactor: 1,
                         heightFactor: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            )
                          ),
                          child: Column(
                            children:const [
                              Text(
                                'Suma',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        heightFactor: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            )
                          ),
                          child: Column(
                            children: const[
                              Text(
                                'Resta',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Uno'
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      '-',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: 
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0
                        )
                      ),
                      child: Column(
                        children: const[
                          Text('Division')
                        ],
                      ),
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
    
  }
}


