import 'package:fpdart/fpdart.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

abstract interface class CardDataSource {
  Future<Either<Failure, String>> create(CardEntity data);
  Future<Either<Failure, List<CardEntity>>> getAll();
  Future<Either<Failure, CardEntity>> getById(String id);
  Future<Either<Failure, Unit>> delete(String id);
  Future<Either<Failure, Unit>> update(CardEntity data);
}
