import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';

class PokemonListScreen extends StatefulWidget {
  @override
  _PokemonListScreenState createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  List pokemons = [];

  @override
  void initState() {
    super.initState();
    fetchPokemons();
  }

  void fetchPokemons() async {
    var response =
        await Dio().get('https://pokeapi.co/api/v2/pokemon?limit=20');
    setState(() {
      pokemons = response.data['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Pokémon')),
      body: ListView.builder(
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pokemons[index]['name'].toString().toUpperCase()),
            onTap: () {
              final encodedUrl = Uri.encodeComponent(pokemons[index]['url']);
              context.go('/pokemon/$encodedUrl');
            },
          );
        },
      ),
    );
  }
}
