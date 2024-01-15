import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/model/character.dart';
import 'package:rick_morty/view_model/character_view_model.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rick and Morty'),
      ),
      body: _buildCharacterList(context),
    );
  }
}

Widget _buildCharacterList(BuildContext context) {
  return Consumer<MainViewModel>(
    builder: (context, viewModel, child) => ListView.builder(
      itemCount: viewModel.characters.length,
      itemBuilder: (context, index) {
        Character character = viewModel.characters[index];
        return ListTile(
          title: Text(character.name),
          subtitle: Text(character.type),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(character.image),
          ),
        );
      },
    ),
  );
}
