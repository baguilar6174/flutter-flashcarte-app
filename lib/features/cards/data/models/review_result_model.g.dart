// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_result_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetReviewResultModelCollection on Isar {
  IsarCollection<ReviewResultModel> get reviewResultModels => this.collection();
}

const ReviewResultModelSchema = CollectionSchema(
  name: r'ReviewResultModel',
  id: 2929626984543718658,
  properties: {
    r'responseTimeMs': PropertySchema(
      id: 0,
      name: r'responseTimeMs',
      type: IsarType.long,
    ),
    r'reviewedAt': PropertySchema(
      id: 1,
      name: r'reviewedAt',
      type: IsarType.dateTime,
    ),
    r'userRating': PropertySchema(
      id: 2,
      name: r'userRating',
      type: IsarType.string,
      enumMap: _ReviewResultModeluserRatingEnumValueMap,
    ),
    r'wasCorrect': PropertySchema(
      id: 3,
      name: r'wasCorrect',
      type: IsarType.bool,
    )
  },
  estimateSize: _reviewResultModelEstimateSize,
  serialize: _reviewResultModelSerialize,
  deserialize: _reviewResultModelDeserialize,
  deserializeProp: _reviewResultModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'reviewedAt': IndexSchema(
      id: 2320441059134539159,
      name: r'reviewedAt',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'reviewedAt',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'session': LinkSchema(
      id: 7434488347772055561,
      name: r'session',
      target: r'StudySessionModel',
      single: true,
    ),
    r'flashcard': LinkSchema(
      id: 1866419857696159193,
      name: r'flashcard',
      target: r'FlashcardModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _reviewResultModelGetId,
  getLinks: _reviewResultModelGetLinks,
  attach: _reviewResultModelAttach,
  version: '3.1.0+1',
);

int _reviewResultModelEstimateSize(
  ReviewResultModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.userRating.name.length * 3;
  return bytesCount;
}

void _reviewResultModelSerialize(
  ReviewResultModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.responseTimeMs);
  writer.writeDateTime(offsets[1], object.reviewedAt);
  writer.writeString(offsets[2], object.userRating.name);
  writer.writeBool(offsets[3], object.wasCorrect);
}

ReviewResultModel _reviewResultModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ReviewResultModel();
  object.id = id;
  object.responseTimeMs = reader.readLong(offsets[0]);
  object.reviewedAt = reader.readDateTime(offsets[1]);
  object.userRating = _ReviewResultModeluserRatingValueEnumMap[
          reader.readStringOrNull(offsets[2])] ??
      DifficultyRating.again;
  object.wasCorrect = reader.readBool(offsets[3]);
  return object;
}

P _reviewResultModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (_ReviewResultModeluserRatingValueEnumMap[
              reader.readStringOrNull(offset)] ??
          DifficultyRating.again) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ReviewResultModeluserRatingEnumValueMap = {
  r'again': r'again',
  r'hard': r'hard',
  r'good': r'good',
  r'easy': r'easy',
};
const _ReviewResultModeluserRatingValueEnumMap = {
  r'again': DifficultyRating.again,
  r'hard': DifficultyRating.hard,
  r'good': DifficultyRating.good,
  r'easy': DifficultyRating.easy,
};

Id _reviewResultModelGetId(ReviewResultModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _reviewResultModelGetLinks(
    ReviewResultModel object) {
  return [object.session, object.flashcard];
}

void _reviewResultModelAttach(
    IsarCollection<dynamic> col, Id id, ReviewResultModel object) {
  object.id = id;
  object.session
      .attach(col, col.isar.collection<StudySessionModel>(), r'session', id);
  object.flashcard
      .attach(col, col.isar.collection<FlashcardModel>(), r'flashcard', id);
}

extension ReviewResultModelQueryWhereSort
    on QueryBuilder<ReviewResultModel, ReviewResultModel, QWhere> {
  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterWhere>
      anyReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'reviewedAt'),
      );
    });
  }
}

extension ReviewResultModelQueryWhere
    on QueryBuilder<ReviewResultModel, ReviewResultModel, QWhereClause> {
  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterWhereClause>
      reviewedAtEqualTo(DateTime reviewedAt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'reviewedAt',
        value: [reviewedAt],
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterWhereClause>
      reviewedAtNotEqualTo(DateTime reviewedAt) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'reviewedAt',
              lower: [],
              upper: [reviewedAt],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'reviewedAt',
              lower: [reviewedAt],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'reviewedAt',
              lower: [reviewedAt],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'reviewedAt',
              lower: [],
              upper: [reviewedAt],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterWhereClause>
      reviewedAtGreaterThan(
    DateTime reviewedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'reviewedAt',
        lower: [reviewedAt],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterWhereClause>
      reviewedAtLessThan(
    DateTime reviewedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'reviewedAt',
        lower: [],
        upper: [reviewedAt],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterWhereClause>
      reviewedAtBetween(
    DateTime lowerReviewedAt,
    DateTime upperReviewedAt, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'reviewedAt',
        lower: [lowerReviewedAt],
        includeLower: includeLower,
        upper: [upperReviewedAt],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ReviewResultModelQueryFilter
    on QueryBuilder<ReviewResultModel, ReviewResultModel, QFilterCondition> {
  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      responseTimeMsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'responseTimeMs',
        value: value,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      responseTimeMsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'responseTimeMs',
        value: value,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      responseTimeMsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'responseTimeMs',
        value: value,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      responseTimeMsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'responseTimeMs',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      reviewedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reviewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      reviewedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reviewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      reviewedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reviewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      reviewedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reviewedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      userRatingEqualTo(
    DifficultyRating value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userRating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      userRatingGreaterThan(
    DifficultyRating value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userRating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      userRatingLessThan(
    DifficultyRating value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userRating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      userRatingBetween(
    DifficultyRating lower,
    DifficultyRating upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userRating',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      userRatingStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userRating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      userRatingEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userRating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      userRatingContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userRating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      userRatingMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userRating',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      userRatingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userRating',
        value: '',
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      userRatingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userRating',
        value: '',
      ));
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      wasCorrectEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wasCorrect',
        value: value,
      ));
    });
  }
}

extension ReviewResultModelQueryObject
    on QueryBuilder<ReviewResultModel, ReviewResultModel, QFilterCondition> {}

extension ReviewResultModelQueryLinks
    on QueryBuilder<ReviewResultModel, ReviewResultModel, QFilterCondition> {
  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      session(FilterQuery<StudySessionModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'session');
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      sessionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'session', 0, true, 0, true);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      flashcard(FilterQuery<FlashcardModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'flashcard');
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterFilterCondition>
      flashcardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'flashcard', 0, true, 0, true);
    });
  }
}

extension ReviewResultModelQuerySortBy
    on QueryBuilder<ReviewResultModel, ReviewResultModel, QSortBy> {
  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      sortByResponseTimeMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseTimeMs', Sort.asc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      sortByResponseTimeMsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseTimeMs', Sort.desc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      sortByReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewedAt', Sort.asc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      sortByReviewedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewedAt', Sort.desc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      sortByUserRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userRating', Sort.asc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      sortByUserRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userRating', Sort.desc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      sortByWasCorrect() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wasCorrect', Sort.asc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      sortByWasCorrectDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wasCorrect', Sort.desc);
    });
  }
}

extension ReviewResultModelQuerySortThenBy
    on QueryBuilder<ReviewResultModel, ReviewResultModel, QSortThenBy> {
  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      thenByResponseTimeMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseTimeMs', Sort.asc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      thenByResponseTimeMsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseTimeMs', Sort.desc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      thenByReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewedAt', Sort.asc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      thenByReviewedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewedAt', Sort.desc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      thenByUserRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userRating', Sort.asc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      thenByUserRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userRating', Sort.desc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      thenByWasCorrect() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wasCorrect', Sort.asc);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QAfterSortBy>
      thenByWasCorrectDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wasCorrect', Sort.desc);
    });
  }
}

extension ReviewResultModelQueryWhereDistinct
    on QueryBuilder<ReviewResultModel, ReviewResultModel, QDistinct> {
  QueryBuilder<ReviewResultModel, ReviewResultModel, QDistinct>
      distinctByResponseTimeMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'responseTimeMs');
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QDistinct>
      distinctByReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reviewedAt');
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QDistinct>
      distinctByUserRating({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userRating', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ReviewResultModel, ReviewResultModel, QDistinct>
      distinctByWasCorrect() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wasCorrect');
    });
  }
}

extension ReviewResultModelQueryProperty
    on QueryBuilder<ReviewResultModel, ReviewResultModel, QQueryProperty> {
  QueryBuilder<ReviewResultModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ReviewResultModel, int, QQueryOperations>
      responseTimeMsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responseTimeMs');
    });
  }

  QueryBuilder<ReviewResultModel, DateTime, QQueryOperations>
      reviewedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reviewedAt');
    });
  }

  QueryBuilder<ReviewResultModel, DifficultyRating, QQueryOperations>
      userRatingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userRating');
    });
  }

  QueryBuilder<ReviewResultModel, bool, QQueryOperations> wasCorrectProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wasCorrect');
    });
  }
}
