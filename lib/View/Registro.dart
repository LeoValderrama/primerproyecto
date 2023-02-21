import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  @override
  RegistroApp createState() => RegistroApp();
}

class RegistroApp extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de usuarios'),
        backgroundColor: Colors.green ,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20,left: 10,right: 10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Nombre'
              ),
              style: TextStyle(
                color: Color(0xFF0097ff)
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 20,left: 10,right: 10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Identificación'
                ),
                style: TextStyle(
                    color: Color(0xFF0097ff)
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20,left: 10,right: 10),
              child: TextField(

                decoration: InputDecoration(
                    labelText: 'Correo'
                ),
                style: TextStyle(
                    color: Color(0xFF0097ff)
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20,left: 10,right: 10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Teléfono'
                ),
                style: TextStyle(
                    color: Color(0xFF0097ff)
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: ElevatedButton(
                onPressed: () {
                  print('botón presionado');
                },
                child: Text('Registrar'),
              ),
            ),
         ],
        ),
      ),
    );
  }
}
