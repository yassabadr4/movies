import 'package:movie_app/core/network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  const ServerException({
    required this.errorMessageModel,
  });
}

class LocalDataBaseException implements Exception {
  final String message;

  LocalDataBaseException({
    required this.message,
  });
}
