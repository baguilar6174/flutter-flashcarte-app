import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/domain.dart';

class DecksRepositoryImpl implements DecksRepository {
  final DecksDataSource _dataSource;

  const DecksRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, String>> create(Deck data) async {
    return await _dataSource.create(data);
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) async {
    return await _dataSource.delete(id);
  }

  @override
  Future<Either<Failure, List<Deck>>> getAll() async {
    final response = await _dataSource.getAll();
    return response.fold((failure) => Left(failure), (response) {
      if (response.isEmpty) return Left(NoDataFailure("No data"));
      return Right(response);
    });
  }

  @override
  Future<Either<Failure, Deck>> getById(String id) async {
    final response = await _dataSource.getById(id);
    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response),
    );
  }

  @override
  Future<Either<Failure, Unit>> update(Deck data) async {
    return await _dataSource.update(data);
  }
}
