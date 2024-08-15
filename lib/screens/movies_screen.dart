// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:popcorn_time/models/movie_model.dart';
import 'package:popcorn_time/widgets/movie_card.dart';

// ignore: must_be_immutable
class MoviesScreen extends StatelessWidget {
  final List<Movie> movies;
  String? title;

  MoviesScreen({
    super.key,
    required this.movies,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    var content = Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: MovieCard(movie: movies[index]),
          );
        },
      ),
    );

    if (movies.isEmpty) {
      return Center(
          child: Text(
        "OHH... Nothing is here!",
        style: TextStyle(fontSize: 22),
      ));
    }

    if (title == null) {
      title = movies[0].genre;
      return content;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(title.toString()),
        ),
        body: content);
    // : Text(title!);
  }
}
