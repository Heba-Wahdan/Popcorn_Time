import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:popcorn_time/data/movies_data.dart';
import 'package:popcorn_time/models/movie_model.dart';

enum Genres {
  action,
  comedy,
  drama,
  horror,
  scienceFiction,
  romance,
  fantasy,
  animation,
  thriller,
  documentary
}

final moviesData = Provider((ref) => movieList);

final trendingMovies =
    Provider((ref) => movieList.where((movie) => movie.isTrending).toList());

class FavoriteMovieNotifier extends StateNotifier<List<Movie>> {
  FavoriteMovieNotifier() : super([]);

  bool toggleMealFavorite(Movie movie) {
    final isFavoriteMeal = state.contains(movie);

    if (isFavoriteMeal) {
      state = state.where((m) => m.title != movie.title).toList();
      return false;
    } else {
      state = [...state, movie];
      return true;
    }
  }
}

final favoriteMovieProvider =
    StateNotifierProvider<FavoriteMovieNotifier, List<Movie>>((ref) {
  return FavoriteMovieNotifier();
});

class recentMovieNotifier extends StateNotifier<List<Movie>> {
  recentMovieNotifier() : super([]);

  void addRecentMovie(Movie movie) {
    List<Movie> recentList = List.from(state);

    recentList.removeWhere((m) => m.title == movie.title);

    recentList.insert(0, movie);

    if (recentList.length > 10) {
      recentList = recentList.sublist(0, 10);
    }

    state = recentList;
  }
}

final recentMoviesProvider =
    StateNotifierProvider<recentMovieNotifier, List<Movie>>((ref) {
  return recentMovieNotifier();
});
