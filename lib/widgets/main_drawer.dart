import 'package:flutter/material.dart';
import 'package:popcorn_time/data/movies_data.dart';
import 'package:popcorn_time/models/movie_model.dart';
import 'package:popcorn_time/screens/movies_screen.dart';

enum Genres {
  action,
  comedy,
  drama,
  horror,

  romance,
  fantasy,
  animation,
  thriller,
}

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        const DrawerHeader(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.movie_filter,
                size: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "GENRES",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              for (final genre in Genres.values)
                TextButton(
                    onPressed: () {
                      List<Movie> filteredMovies = movieList.where((movie) {
                        return movie.genre.toLowerCase() ==
                            genre.name.toLowerCase();
                      }).toList();

                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return MoviesScreen(
                          movies: filteredMovies,
                          title: filteredMovies[0].genre,
                        );
                      }));
                    },
                    child: Text(
                      genre.name.toUpperCase(),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 207, 237, 239)),
                    ))
            ],
          ),
        )
      ],
    ));
  }
}
