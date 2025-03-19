import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      title: 'Pokédex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}
