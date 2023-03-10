import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Registro extends StatefulWidget {
  @override
  RegistroApp createState() => RegistroApp();
}

class RegistroApp extends State<Registro> {
  TextEditingController nombre =TextEditingController();
  TextEditingController identidad=TextEditingController();
  TextEditingController correo=TextEditingController();
  TextEditingController telefono=TextEditingController();

  final firebase= FirebaseFirestore.instance;

  insertarDatos() async{
    try{
      await firebase.collection('Usuarios').doc().set({
        "NombreUsuario":nombre.text,
        "IndentidadUsuario":identidad.text,
        "CorreoUsuario":correo.text,
        "TelefonoUsuario":telefono.text
      });
      print('Envio Correcto');
    }
    catch(e){
      print('Error en insert....... '+ e.toString());
    }
  }


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
              controller: nombre,
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
                controller: identidad,
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
                controller: correo,
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
                controller: telefono,
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
                  print(nombre.text);
                  correo.text='Botón presionado';
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
