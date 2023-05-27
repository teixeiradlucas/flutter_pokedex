import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'common/repositories/pokemon_repository.dart';
import 'features/home/container/home_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: HomeContainer(
        repository: PokemonRepository(dio: Dio()),
      ),
    );
  }
}
