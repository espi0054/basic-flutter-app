import 'package:flutter/material.dart';
import 'shared/nav.dart';
import 'screens/list_screen.dart';
import 'screens/column_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = <Widget>[

    HomeScreen(),
    ListScreen(),
    ColumnScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Flutter App"),
      ),
      body: screens[currentIndex],
      drawer: NavDrawer(
          currentIndex: currentIndex,
          onTapped: (i) {
            print(i);
            setState(() => currentIndex = i);
          }),
    );
  }
}
