import 'package:flutter/material.dart';

class SongsScreen extends StatelessWidget {
  final List bulan = [
    "Nirvana - Smells Like Teen Spirit",
    "Nirvana - Come As You Are",
    "Nirvana - Love Buzz",
    "Nirvana - Something In The Way",
    "Nirvana - Territorial Pissings",
    "Nirvana - Dumb",
    "Nirvana - Drain You"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(bulan[index], style: TextStyle(fontSize: 15)),
            subtitle: Text('Songs '),
            leading: Icon(Icons.audiotrack),
          ),
        );
      },
      itemCount: bulan.length,
    );
  }
}
