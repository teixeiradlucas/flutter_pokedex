import 'package:flutter/material.dart';
import 'package:flutter_pokedex/common/models/pokemon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.list});
  final List<Pokemon> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(list[index].name);
          }),
    );
  }
}
