import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/movies/domain/entities/movie.dart';
import 'package:movie_app/movies/domain/repositories/base_movies_repositories.dart';

class GetNowPlayingMoviesUseCase{
  final BaseMoviesRepositories baseMoviesRepositories;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepositories);

  Future<Either<Failure , List<Movie>>> execute()async{
    return await baseMoviesRepositories.getNowPlayingMovies();
  }
}