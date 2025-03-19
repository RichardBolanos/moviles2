import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/pokemon_list_screen.dart';
import '../screens/pokemon_detail_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/pokemon', builder: (context, state) => PokemonListScreen()),
    GoRoute(
      path: '/pokemon/:url',
      builder: (context, state) =>
          PokemonDetailScreen(url: state.pathParameters['url']!),
    ),
  ],
);
