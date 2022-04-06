
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  final List notif = [
    "Febri",
    "Rizky",
    "Aldi",
    "Nanda",
    "Dafid",
    "Ardian",
    "Abdul",
    "Munir"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(notif[index], style: TextStyle(fontSize: 20)),
              subtitle: Text('082xxxxxxxxx '),
              leading: Icon(Icons.person),
            ),
          );
        },
        itemCount: notif.length,
      ),
    );
  }
}
