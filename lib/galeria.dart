import 'package:flutter/material.dart';
import 'package:movilph/main.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galería'),
        actions: [
          IconButton(
            onPressed: () {
              // Lógica del botón de notificaciones aquí
            },
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Galería',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            CardWithButtons(
              imageURL:
                  'https://img.freepik.com/vector-premium/hola-caligrafia-vectorial-letras-manuales-frases-saludo-diferentes-idiomas-burbujas-habla_258190-1420.jpg',
              onGoToEvent: () {
                // Lógica del botón "Ir a Evento" aquí
              },
              onDownload: () {
                // Lógica del botón "Descargar" aquí
              },
              onView: () {
                // Lógica del botón "Ver" aquí
              },
            ),
            SizedBox(height: 20.0),
            CardWithButtons(
              imageURL:
                  'https://img.freepik.com/vector-premium/hola-caligrafia-vectorial-letras-manuales-frases-saludo-diferentes-idiomas-burbujas-habla_258190-1420.jpg',
              onGoToEvent: () {
                // Lógica del botón "Ir a Evento" aquí
              },
              onDownload: () {
                // Lógica del botón "Descargar" aquí
              },
              onView: () {
                // Lógica del botón "Ver" aquí
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardWithButtons extends StatelessWidget {
  final String imageURL;
  final VoidCallback? onGoToEvent;
  final VoidCallback? onDownload;
  final VoidCallback? onView;

  const CardWithButtons({
    required this.imageURL,
    this.onGoToEvent,
    this.onDownload,
    this.onView,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            imageURL,
            fit: BoxFit.cover,
            height: 150.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: onGoToEvent,
                  child: Text('Ir a Evento'),
                ),
                ElevatedButton(
                  onPressed: onDownload,
                  child: Text('Descargar'),
                ),
                ElevatedButton(
                  onPressed: onView,
                  child: Text('Ver'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
