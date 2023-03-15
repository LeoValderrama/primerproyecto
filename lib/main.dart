import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'DTO/User.dart';
import 'View/Registro.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  HomeStart createState() => HomeStart();
}




class HomeStart extends State<Home> {
  TextEditingController correo=TextEditingController();
  TextEditingController pass=TextEditingController();
  User objUser=User();
  validarDatos() async {
    bool flag = false;
    try {
      CollectionReference ref = FirebaseFirestore.instance.collection("Usuarios");
      QuerySnapshot usuario = await ref.get();
      if (usuario.docs.length != 0) {
        for (var cursor in usuario.docs) {
          if (correo.text == cursor.get('CorreoUsuario')) {
            if (pass .text == cursor.get('Password')) {
print(cursor.get('NombreUsuario'));
objUser.nombre=cursor.get('NombreUsuario');

            }
          }
          //print(cursor.get('User'));
        } //if (!flag)
        // mensajeGeneral('Mensaje', 'dato no encontrado');

      }
    } catch (e) {
      //mensajeGeneral('Error', e.toString());
      print('**************ERROR***********************' + e.toString());
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenidos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Línea 2'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('img/user_v1.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
controller: correo,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'correo user',
                      hintText: 'Digite user de usuario '),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: pass,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Password Usuario',
                      hintText: 'Digite password de usuario '),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: ElevatedButton(
                  onPressed: () {
                    print('botón presionado');
                    validarDatos();
                  },
                  child: Text('Enviar'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: TextButton(
                  onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (_) => Registro(objUser)));
                  },
                  child: Text('Registrar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
