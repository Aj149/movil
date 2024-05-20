import 'package:flutter/material.dart';

class MyAppFront extends StatefulWidget {
  const MyAppFront({super.key});

  @override
  State<MyAppFront> createState() => _MyAppFrontState();
}

class _MyAppFrontState extends State<MyAppFront> {
  late String _nombre;
  late String _email;
  late String _password;
  @override
  // definir variables
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: ListView(
        children: <Widget> [
          const CircleAvatar(
            radius: 100.0,
            backgroundColor: Color.fromARGB(132, 150, 161, 35),
            backgroundImage: AssetImage("Img/images.jpeg"),
          ),
          const Text(
            "Hola Mundo",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Feeman'),
          ),
          const Text(
            "Este es un login de prueba",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Feeman'),
          ),
          TextField(
            enableInteractiveSelection: false,
            decoration: InputDecoration(
              hintText: "User_Name",
              labelText: "user_name",
              suffixIcon: const Icon(Icons.verified_user),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onSubmitted: (valor){
              _nombre =valor;
              print("El nombre es $_nombre");

            },
          ),
          const Divider(
            height: 25.0,
          ),
          TextField(
            enableInteractiveSelection: false,
            decoration: InputDecoration(
              hintText: "EMAIL",
              labelText: "email",
              suffixIcon: const Icon(Icons.ac_unit),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onSubmitted: (valor){
              _email =valor;
              print("El nombre es $_email");

            },
          ),
          const Divider(
            height: 25.0,
          ),
          TextField(
            enableInteractiveSelection: false,
            decoration: InputDecoration(
              hintText: "Pasword",
              labelText: "Pasword",
              suffixIcon: const Icon(Icons.access_alarm_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onSubmitted: (valor){
              _password =valor;
              print("El nombre es $_password");

            },
          ),
          ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 123, 255),
                      fixedSize: const Size(100, 50),
                    ),
                    child: const Icon(Icons.star),
                  ),
          ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 123, 255),
                      fixedSize: const Size(100, 50),
                      
                    ),
                    child: const Icon(Icons.access_time_filled_rounded),
                  ),
        ],
      ),
    );
  }
}
