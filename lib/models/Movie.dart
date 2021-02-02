class Movie {
  int page;
  int totalResults;
  int totalPages;
  List<Results> results;

  Movie({this.page, this.totalResults, this.totalPages, this.results});

  Movie.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    totalResults = json['total_results'];
    totalPages = json['total_pages'];
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['total_results'] = this.totalResults;
    data['total_pages'] = this.totalPages;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  double popularity;
  int id;
  bool video;
  int voteCount;
  double voteAverage;
  String title;
  String releaseDate;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String backdropPath;
  bool adult;
  String overview;
  String posterPath;

  Results(
      {this.popularity,
      this.id,
      this.video,
      this.voteCount,
      this.voteAverage,
      this.title,
      this.releaseDate,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.backdropPath,
      this.adult,
      this.overview,
      this.posterPath});

  Results.fromJson(Map<String, dynamic> json) {
    popularity = json['popularity'];
    id = json['id'];
    video = json['video'];
    voteCount = json['vote_count'];
    voteAverage = json['vote_average'];
    title = json['title'];
    releaseDate = json['release_date'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    backdropPath = json['backdrop_path'];
    adult = json['adult'];
    overview = json['overview'];
    posterPath = json['poster_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['popularity'] = this.popularity;
    data['id'] = this.id;
    data['video'] = this.video;
    data['vote_count'] = this.voteCount;
    data['vote_average'] = this.voteAverage;
    data['title'] = this.title;
    data['release_date'] = this.releaseDate;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['genre_ids'] = this.genreIds;
    data['backdrop_path'] = this.backdropPath;
    data['adult'] = this.adult;
    data['overview'] = this.overview;
    data['poster_path'] = this.posterPath;
    return data;
  }
}
