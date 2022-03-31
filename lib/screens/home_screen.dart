import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget> [
          FlutterLogo(
            size: 270,
            style: FlutterLogoStyle.markOnly,
          ),
          new Container(
            child: Center(
              child: Text(
                "Carl Espiritu",
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
