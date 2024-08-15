import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:popcorn_time/models/movie_model.dart';
import 'package:popcorn_time/providers/movieModel_provider.dart';

class MovieItemScreen extends ConsumerWidget {
  final Movie movie;

  const MovieItemScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(recentMoviesProvider.notifier).addRecentMovie(movie);
    });

    final favoriteMeals = ref.watch(favoriteMovieProvider);
    final isFavorite = favoriteMeals.contains(movie);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                final onFavoriteMeal = ref
                    .watch(favoriteMovieProvider.notifier)
                    .toggleMealFavorite(movie);
              },
              icon: Icon(isFavorite ? Icons.star : Icons.star_border))
        ],
      ),
      body: Column(
        children: [
          Image.network(
            movie.imageUrl,
            height: 359,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            '${movie.genre} | ${movie.director} | ${movie.releaseDate}',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            textAlign: TextAlign.start,
            'Summary',
            style: TextStyle(
              color: Color.fromARGB(255, 246, 231, 96),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            textAlign: TextAlign.start,
            movie.synopsis,
            style: const TextStyle(
              color: Color.fromARGB(216, 255, 255, 255),
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
