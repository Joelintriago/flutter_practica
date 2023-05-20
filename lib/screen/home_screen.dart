

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('HomeScreen'),
        ),
        elevation: 0,
      ),
      body: Row(
        children: const[
          Flexible(
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Numero uno",
                      fillColor: Colors.white,
                      filled: false
                    ),
                  ),
                ),
                Text('Hola'),
                Text('Vamos')
              ],
            )
          )
        ],
      ),
    );
  }
}
