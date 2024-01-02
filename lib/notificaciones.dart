import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificaciones'),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildNotificationSection('Notificaciones Nuevas', true),
            _buildNotificationSection('Notificaciones Leídas', false),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationSection(String title, bool isNew) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        _buildNotificationCard('John Doe', 'assets/fotografo.png',
            'Contenido de la notificación.', isNew),
        _buildNotificationCard('Jane Smith', 'assets/fotografo.png',
            'Otro contenido de notificación.', isNew),
      ],
    );
  }

  Widget _buildNotificationCard(
      String name, String imagePath, String content, bool isNew) {
    return Card(
      color: isNew ? Color.fromARGB(255, 244, 183, 92) : Colors.grey,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Text(
          content,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
