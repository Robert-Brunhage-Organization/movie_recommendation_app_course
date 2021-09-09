import 'package:movie_recommendation_app_course/features/movie_flow/genre/genre_entity.dart';
import 'package:movie_recommendation_app_course/features/movie_flow/movie_repository.dart';
import 'package:movie_recommendation_app_course/features/movie_flow/result/movie_entity.dart';

class StubMovieRepository implements MovieRepository {
  @override
  Future<List<GenreEntity>> getMovieGenres() async {
    return Future.value([
      const GenreEntity(id: 1, name: 'Animation'),
    ]);
  }

  @override
  Future<List<MovieEntity>> getRecommendedMovies(double rating, String date, String genreIds) async {
    return Future.value([
      const MovieEntity(
        title: 'Lilo & Stich',
        overview: 'Some interesting story',
        voteAverage: 5.2,
        genreIds: [1, 2, 3],
        releaseDate: '2010-02-03',
      ),
    ]);
  }
}
