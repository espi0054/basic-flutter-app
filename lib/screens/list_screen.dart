import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading:FlutterLogo(size: 50),
              title: Text("This is Tile 1"),
              subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris id.")
            ),
          ),
          Card(
            child: ListTile(
              leading:FlutterLogo(size:50),
              title: Text("This is Tile 2"),
              subtitle: Text("Just writing a filler text here"),
            ),
          ),
          Card(
            child: ListTile(
              leading:FlutterLogo(size:50),
              title: Text("This is Tile 3"),
              subtitle: Text("I am here")
            ),
          ),
        ],
      ),
    );
  }
}
