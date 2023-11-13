class Movie {
  String title;
  String overview;
  String posterPath;
  String backdropPath;
  String releaseDate;

  Movie({
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.backdropPath,
    required this.releaseDate,
  });
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json["title"]??json["name"],
        overview: json["overview"]??'',
        posterPath: json["poster_path"]??'',
        backdropPath: json["backdrop_path"]??'',
        releaseDate: json["release_date"]??'');
  }
}
