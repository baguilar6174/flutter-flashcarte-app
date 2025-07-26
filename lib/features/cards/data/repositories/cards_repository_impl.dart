import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/datasource/flashcard_datasource.dart'
    show FlashcardDataSource;
import 'package:flutter_flashcarte_app/features/cards/domain/repositories/flashcard_repository.dart';

class CardsRepositoryImpl implements FlashcardRepository {
  final FlashcardDataSource _dataSource;

  const CardsRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, String>> create(Flashcard data) async {
    return await _dataSource.create(data);
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) async {
    return await _dataSource.delete(id);
  }

  @override
  Future<Either<Failure, List<Flashcard>>> getAll() async {
    final response = await _dataSource.getAll();
    return response.fold((failure) => Left(failure), (workoutResponse) {
      if (workoutResponse.isEmpty) return Left(NoDataFailure("No data"));
      return Right(workoutResponse);
    });
  }

  @override
  Future<Either<Failure, List<Flashcard>>> getByDeckId(String id) async {
    // TODO: implement getCardsNeedingReview
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Flashcard>> getById(String id) async {
    final response = await _dataSource.getById(id);
    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response),
    );
  }

  @override
  Future<Either<Failure, List<Flashcard>>> getCardsNeedingReview() {
    // TODO: implement getCardsNeedingReview
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Flashcard>>> searchByText(String query) {
    // TODO: implement searchByText
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> update(Flashcard data) async {
    return await _dataSource.update(data);
  }
}
