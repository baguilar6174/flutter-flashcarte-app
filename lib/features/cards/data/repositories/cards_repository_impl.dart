import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/datasource/flashcard_datasource.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/repositories/cards_repository.dart';

class CardsRepositoryImpl implements FlashcardRepository {
  final FlashcardDataSource _dataSource;

  const CardsRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, String>> create(Card data) async {
    return await _dataSource.create(data);
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) async {
    return await _dataSource.delete(id);
  }

  @override
  Future<Either<Failure, List<Card>>> getAll() async {
    final response = await _dataSource.getAll();
    return response.fold((failure) => Left(failure), (workoutResponse) {
      if (workoutResponse.isEmpty) return Left(NoDataFailure("No data"));
      return Right(workoutResponse);
    });
  }

  @override
  Future<Either<Failure, Card>> getById(String id) async {
    final response = await _dataSource.getById(id);
    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response),
    );
  }

  @override
  Future<Either<Failure, Unit>> update(Card data) async {
    return await _dataSource.update(data);
  }
}
