

// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace




import "package:flutter/material.dart";

void main() => runApp(MiApp());


class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi f App",
      home: Inicio(),
    );
  }
}


class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: cuerpo(),
    );
  }
}


Widget cuerpo(){
  
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://i.pinimg.com/originals/3f/56/62/3f5662e8d76656be9fd769256f72e3da.jpg"),
      fit: BoxFit.cover
      )
      
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children:<Widget> [
          nombre(),
          campoUsuario(),
          campoContrasena(),
          SizedBox(height: 10,),
          btnEntrar()
        ],
      ),
      ),
  );
}

Widget nombre(){
  return Text("Joel Login", style: TextStyle(color: Colors.white,fontSize: 35.0, fontWeight: FontWeight.bold),);
}

Widget campoUsuario(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}


Widget campoContrasena(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}


Widget btnEntrar(){
  return TextButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 100,vertical: 10))
      
    ),
    onPressed: (){}, 
    child: Text("Entrar",style: TextStyle(fontSize: 25,color: Colors.white),)
    );
}