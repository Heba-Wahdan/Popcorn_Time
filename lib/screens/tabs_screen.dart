import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:popcorn_time/providers/movieModel_provider.dart';
import 'package:popcorn_time/screens/home_screen.dart';
import 'package:popcorn_time/screens/movies_screen.dart';
import 'package:popcorn_time/widgets/main_drawer.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreen();
  }
}

class _TabsScreen extends ConsumerState<TabsScreen> {
  int setPageIndex = 0;

  void setPage(int index) {
    setState(() {
      setPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = const HomeScreen();
    String activeTitle = "Home";

    if (setPageIndex == 1) {
      final favoriteMovies = ref.watch(favoriteMovieProvider);
      activeTitle = "Favorites";
      activeScreen = MoviesScreen(
        movies: favoriteMovies,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activeTitle),
      ),
      drawer: const MainDrawer(),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
          onTap: setPage,
          currentIndex: setPageIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites"),
          ]),
    );
  }
}
