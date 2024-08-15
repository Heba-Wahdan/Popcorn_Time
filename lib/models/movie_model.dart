class Movie {
  final String title;
  final String genre;
  final String director;
  final String releaseDate;
  final String synopsis;
  final String imageUrl;
  final bool isTrending;

  Movie({
    required this.title,
    required this.genre,
    required this.director,
    required this.releaseDate,
    required this.synopsis,
    required this.imageUrl,
    this.isTrending = false,
  });
}
