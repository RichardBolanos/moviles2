import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pokédex')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 54, 158, 244)),
              child: Text('Menú',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: Text('Lista de Pokémon'),
              onTap: () {
                context.go('/pokemon');
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text('Bienvenido a la Pokédex')),
    );
  }
}
