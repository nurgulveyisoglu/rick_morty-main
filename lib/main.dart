import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/model/character.dart';
import 'package:rick_morty/view/character_page.dart';
import 'package:rick_morty/view_model/character_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (BuildContext context) => MainViewModel(),
        child: CharacterPage(),
      ),
    );
  }
}
