import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/exception.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/movies/data/data_source/movie_remote_data_source.dart';
import 'package:movie_app/movies/domain/entities/movie.dart';
import 'package:movie_app/movies/domain/repositories/base_movies_repositories.dart';

class MoviesRepositories extends BaseMoviesRepositories{


  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepositories(this.baseMovieRemoteDataSource);


  @override
  Future<Either<Failure , List<Movie>>> getNowPlayingMovies()async {
 final result =  await baseMovieRemoteDataSource.getNowPlayingMovies();

try{
  return Right(result);
} on ServerException catch(failure){
  return Left(ServerFailure(failure.errorMessageModel.statusMessage));
}
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies()async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try{
      return Right(result);
    } on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
   final result = await baseMovieRemoteDataSource.getTopRatedMovies();
   try{
     return Right(result);
   } on ServerException catch(failure){
     return Left(ServerFailure(failure.errorMessageModel.statusMessage));
   }
  }
}
