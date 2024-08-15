import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:popcorn_time/models/movie_model.dart';
import 'package:popcorn_time/providers/movieModel_provider.dart';
import 'package:popcorn_time/screens/movie_item_screen.dart';
import 'package:popcorn_time/widgets/movie_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trending = ref.read(trendingMovies);
    final recentMovies = ref.watch(recentMoviesProvider);
    final movieList = ref.read(moviesData);
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      final searchText =
                          searchController.text.trim().toLowerCase();
                      Movie? foundMovie;

                      for (Movie movie in movieList) {
                        if (movie.title.toLowerCase() == searchText) {
                          foundMovie = movie;
                          break;
                        }
                      }
                      if (foundMovie != null) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return MovieItemScreen(movie: foundMovie!);
                            },
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Movie not found!")));
                      }
                    },
                    icon: const Icon(Icons.search)),
                hintText: "Search here...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: const BorderSide(color: Colors.black, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(0.0), // Rectangular corners
                  borderSide: const BorderSide(
                    color: Colors.black, // Border color
                    width: 2.0, // Border thickness
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Recently Viewed",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recentMovies.length,
              itemBuilder: (context, index) {
                return MovieCard(movie: recentMovies[index]);
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Trending",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trending.length,
              itemBuilder: (context, index) {
                return MovieCard(movie: trending[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
