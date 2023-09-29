import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      home: Scaffold(
  appBar: AppBar(
  title: Text('Lista'),
  ),
  body: MyListView(),
      ),
  );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        final names = ['Janusz', 'Barbara', 'Major', 'Ewelina', 'Ryszard'];
        final surnames = ['Zupa', 'Sałata', 'Zakrzewski', 'Kowalka', 'Pająk'];
        final icons = [
          Icons.bookmark,
          Icons.ac_unit,
          Icons.youtube_searched_for,
          Icons.adb,
          Icons.wc,
        ];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Card(
            child: ListTile(
              leading: Icon(icons[index]),
              title: Text('${names[index]} ${surnames[index]}'),
            ),
          ),
        );

      },
    );
  }
}
