import 'package:flutter/material.dart';
import 'package:movilph/qrs.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  final List<String> events = ['Evento 1', 'Evento 2', 'Evento 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos'),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Lista de Eventos',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 20.0),
                Column(
                  children: events.map((event) {
                    return EventButton(name: event);
                  }).toList(),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    _showAddEventDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 243, 134, 1),
                    minimumSize: const Size(300.0, 50.0),
                  ),
                  child: Text(
                    'Añadir Evento',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showAddEventDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Añadir Nuevo Evento'),
          content: TextField(
            decoration: InputDecoration(labelText: 'Nombre del Evento'),
            onChanged: (value) {
              // Puedes guardar el nombre del evento en una variable si es necesario
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                // Puedes agregar lógica para guardar el nuevo evento aquí
                Navigator.of(context).pop();
              },
              child: Text('Añadir'),
            ),
          ],
        );
      },
    );
  }
}

class EventButton extends StatelessWidget {
  final String name;

  const EventButton({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QRScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 104, 223, 241),
          minimumSize: const Size(300.0, 50.0),
        ),
        child: Text(
          name,
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ),
    );
  }
}
