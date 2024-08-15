import 'package:flutter/material.dart';
import 'package:popcorn_time/models/movie_model.dart';
import 'package:popcorn_time/screens/movie_item_screen.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: ((context) => MovieItemScreen(
                  movie: movie,
                ))));
      },
      borderRadius: BorderRadius.circular(20),
      radius: 10,
      child: Container(
        width: 120,
        margin: EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            movie.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
