import 'package:flutter/material.dart';
import 'package:movilph/eventos.dart';
import 'package:movilph/galeria.dart';
import 'package:movilph/main.dart';
import 'package:movilph/notificaciones.dart';

class HomeBotonScreen extends StatelessWidget {
  const HomeBotonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 124, 128, 127),
                minimumSize: const Size(200.0, 50.0),
              ),
              child: Text(
                'Mis Eventos',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationsScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 124, 128, 127),
                minimumSize: const Size(200.0, 50.0),
              ),
              child: Text(
                'Notificaciones',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GalleryScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 124, 128, 127),
                minimumSize: const Size(200.0, 50.0),
              ),
              child: Text(
                'Galería',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                minimumSize: const Size(200.0, 50.0),
              ),
              child: Text(
                'Salir',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
