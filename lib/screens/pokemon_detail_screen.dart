import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:navigation_and_http/models/pokemon.dart';

class PokemonDetailScreen extends StatefulWidget {
  final String url;
  PokemonDetailScreen({required String url, Key? key})
      : url = Uri.decodeComponent(url),
        super(key: key);

  @override
  _PokemonDetailScreenState createState() => _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends State<PokemonDetailScreen> {
  Pokemon? pokemonData;
  List types = [];
  @override
  void initState() {
    super.initState();
    fetchPokemonDetail();
  }

  void fetchPokemonDetail() async {
    var response = await Dio().get(widget.url);

    setState(() {
      pokemonData = Pokemon.fromJson(response.data);
    });

    for (var type in pokemonData!.types) {
      types.add(type.type.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                pokemonData!.name.toString().toUpperCase() ?? 'Cargando...',
                style: TextStyle(color: Colors.blue),
              ),
              background: pokemonData == null
                  ? Center(child: CircularProgressIndicator())
                  : Image.network(
                      pokemonData!.sprites.other!.officialArtwork.frontDefault,
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              pokemonData == null
                  ? [Center(child: CircularProgressIndicator())]
                  : [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                            Text('ID: ${pokemonData!.id}',
                                style: TextStyle(fontSize: 18)),
                            Text('Altura: ${pokemonData!.height}',
                                style: TextStyle(fontSize: 18)),
                            Text('Peso: ${pokemonData!.weight}',
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                      ),
                    ],
            ),
          ),
        ],
      ),
    );
  }
}
