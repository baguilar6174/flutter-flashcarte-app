// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_session_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStudySessionModelCollection on Isar {
  IsarCollection<StudySessionModel> get studySessionModels => this.collection();
}

const StudySessionModelSchema = CollectionSchema(
  name: r'StudySessionModel',
  id: -8321456945822808195,
  properties: {
    r'completedAt': PropertySchema(
      id: 0,
      name: r'completedAt',
      type: IsarType.dateTime,
    ),
    r'correctAnswers': PropertySchema(
      id: 1,
      name: r'correctAnswers',
      type: IsarType.long,
    ),
    r'incorrectAnswers': PropertySchema(
      id: 2,
      name: r'incorrectAnswers',
      type: IsarType.long,
    ),
    r'maxNewCards': PropertySchema(
      id: 3,
      name: r'maxNewCards',
      type: IsarType.long,
    ),
    r'maxReviews': PropertySchema(
      id: 4,
      name: r'maxReviews',
      type: IsarType.long,
    ),
    r'mode': PropertySchema(
      id: 5,
      name: r'mode',
      type: IsarType.string,
      enumMap: _StudySessionModelmodeEnumValueMap,
    ),
    r'sessionId': PropertySchema(
      id: 6,
      name: r'sessionId',
      type: IsarType.string,
    ),
    r'showHints': PropertySchema(
      id: 7,
      name: r'showHints',
      type: IsarType.bool,
    ),
    r'startedAt': PropertySchema(
      id: 8,
      name: r'startedAt',
      type: IsarType.dateTime,
    ),
    r'totalCards': PropertySchema(
      id: 9,
      name: r'totalCards',
      type: IsarType.long,
    ),
    r'totalTimeSeconds': PropertySchema(
      id: 10,
      name: r'totalTimeSeconds',
      type: IsarType.long,
    )
  },
  estimateSize: _studySessionModelEstimateSize,
  serialize: _studySessionModelSerialize,
  deserialize: _studySessionModelDeserialize,
  deserializeProp: _studySessionModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'sessionId': IndexSchema(
      id: 6949518585047923839,
      name: r'sessionId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'sessionId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'deck': LinkSchema(
      id: -4442529618876082759,
      name: r'deck',
      target: r'DeckModel',
      single: true,
    ),
    r'reviews': LinkSchema(
      id: 1993315291122284974,
      name: r'reviews',
      target: r'ReviewResultModel',
      single: false,
      linkName: r'session',
    )
  },
  embeddedSchemas: {},
  getId: _studySessionModelGetId,
  getLinks: _studySessionModelGetLinks,
  attach: _studySessionModelAttach,
  version: '3.1.0+1',
);

int _studySessionModelEstimateSize(
  StudySessionModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.mode.name.length * 3;
  bytesCount += 3 + object.sessionId.length * 3;
  return bytesCount;
}

void _studySessionModelSerialize(
  StudySessionModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.completedAt);
  writer.writeLong(offsets[1], object.correctAnswers);
  writer.writeLong(offsets[2], object.incorrectAnswers);
  writer.writeLong(offsets[3], object.maxNewCards);
  writer.writeLong(offsets[4], object.maxReviews);
  writer.writeString(offsets[5], object.mode.name);
  writer.writeString(offsets[6], object.sessionId);
  writer.writeBool(offsets[7], object.showHints);
  writer.writeDateTime(offsets[8], object.startedAt);
  writer.writeLong(offsets[9], object.totalCards);
  writer.writeLong(offsets[10], object.totalTimeSeconds);
}

StudySessionModel _studySessionModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StudySessionModel();
  object.completedAt = reader.readDateTimeOrNull(offsets[0]);
  object.correctAnswers = reader.readLong(offsets[1]);
  object.id = id;
  object.incorrectAnswers = reader.readLong(offsets[2]);
  object.maxNewCards = reader.readLong(offsets[3]);
  object.maxReviews = reader.readLong(offsets[4]);
  object.mode =
      _StudySessionModelmodeValueEnumMap[reader.readStringOrNull(offsets[5])] ??
          StudyMode.review;
  object.sessionId = reader.readString(offsets[6]);
  object.showHints = reader.readBool(offsets[7]);
  object.startedAt = reader.readDateTime(offsets[8]);
  object.totalCards = reader.readLong(offsets[9]);
  object.totalTimeSeconds = reader.readLong(offsets[10]);
  return object;
}

P _studySessionModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (_StudySessionModelmodeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          StudyMode.review) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _StudySessionModelmodeEnumValueMap = {
  r'review': r'review',
  r'learn': r'learn',
  r'test': r'test',
  r'mixed': r'mixed',
};
const _StudySessionModelmodeValueEnumMap = {
  r'review': StudyMode.review,
  r'learn': StudyMode.learn,
  r'test': StudyMode.test,
  r'mixed': StudyMode.mixed,
};

Id _studySessionModelGetId(StudySessionModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _studySessionModelGetLinks(
    StudySessionModel object) {
  return [object.deck, object.reviews];
}

void _studySessionModelAttach(
    IsarCollection<dynamic> col, Id id, StudySessionModel object) {
  object.id = id;
  object.deck.attach(col, col.isar.collection<DeckModel>(), r'deck', id);
  object.reviews
      .attach(col, col.isar.collection<ReviewResultModel>(), r'reviews', id);
}

extension StudySessionModelByIndex on IsarCollection<StudySessionModel> {
  Future<StudySessionModel?> getBySessionId(String sessionId) {
    return getByIndex(r'sessionId', [sessionId]);
  }

  StudySessionModel? getBySessionIdSync(String sessionId) {
    return getByIndexSync(r'sessionId', [sessionId]);
  }

  Future<bool> deleteBySessionId(String sessionId) {
    return deleteByIndex(r'sessionId', [sessionId]);
  }

  bool deleteBySessionIdSync(String sessionId) {
    return deleteByIndexSync(r'sessionId', [sessionId]);
  }

  Future<List<StudySessionModel?>> getAllBySessionId(
      List<String> sessionIdValues) {
    final values = sessionIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'sessionId', values);
  }

  List<StudySessionModel?> getAllBySessionIdSync(List<String> sessionIdValues) {
    final values = sessionIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'sessionId', values);
  }

  Future<int> deleteAllBySessionId(List<String> sessionIdValues) {
    final values = sessionIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'sessionId', values);
  }

  int deleteAllBySessionIdSync(List<String> sessionIdValues) {
    final values = sessionIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'sessionId', values);
  }

  Future<Id> putBySessionId(StudySessionModel object) {
    return putByIndex(r'sessionId', object);
  }

  Id putBySessionIdSync(StudySessionModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'sessionId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySessionId(List<StudySessionModel> objects) {
    return putAllByIndex(r'sessionId', objects);
  }

  List<Id> putAllBySessionIdSync(List<StudySessionModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'sessionId', objects, saveLinks: saveLinks);
  }
}

extension StudySessionModelQueryWhereSort
    on QueryBuilder<StudySessionModel, StudySessionModel, QWhere> {
  QueryBuilder<StudySessionModel, StudySessionModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StudySessionModelQueryWhere
    on QueryBuilder<StudySessionModel, StudySessionModel, QWhereClause> {
  QueryBuilder<StudySessionModel, StudySessionModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterWhereClause>
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

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterWhereClause>
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

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterWhereClause>
      sessionIdEqualTo(String sessionId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'sessionId',
        value: [sessionId],
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterWhereClause>
      sessionIdNotEqualTo(String sessionId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sessionId',
              lower: [],
              upper: [sessionId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sessionId',
              lower: [sessionId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sessionId',
              lower: [sessionId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sessionId',
              lower: [],
              upper: [sessionId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension StudySessionModelQueryFilter
    on QueryBuilder<StudySessionModel, StudySessionModel, QFilterCondition> {
  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      completedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedAt',
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      completedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedAt',
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      completedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      completedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'completedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      completedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'completedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      completedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'completedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      correctAnswersEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctAnswers',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      correctAnswersGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctAnswers',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      correctAnswersLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctAnswers',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      correctAnswersBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctAnswers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
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

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
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

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
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

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      incorrectAnswersEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'incorrectAnswers',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      incorrectAnswersGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'incorrectAnswers',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      incorrectAnswersLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'incorrectAnswers',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      incorrectAnswersBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'incorrectAnswers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      maxNewCardsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxNewCards',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      maxNewCardsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxNewCards',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      maxNewCardsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxNewCards',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      maxNewCardsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxNewCards',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      maxReviewsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxReviews',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      maxReviewsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxReviews',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      maxReviewsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxReviews',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      maxReviewsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxReviews',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      modeEqualTo(
    StudyMode value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      modeGreaterThan(
    StudyMode value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      modeLessThan(
    StudyMode value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      modeBetween(
    StudyMode lower,
    StudyMode upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      modeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      modeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      modeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      modeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      modeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mode',
        value: '',
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      modeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mode',
        value: '',
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      sessionIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      sessionIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      sessionIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      sessionIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sessionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      sessionIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      sessionIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      sessionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      sessionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sessionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      sessionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sessionId',
        value: '',
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      sessionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sessionId',
        value: '',
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      showHintsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'showHints',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      startedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      startedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      startedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      startedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      totalCardsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalCards',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      totalCardsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalCards',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      totalCardsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalCards',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      totalCardsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalCards',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      totalTimeSecondsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalTimeSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      totalTimeSecondsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalTimeSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      totalTimeSecondsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalTimeSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      totalTimeSecondsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalTimeSeconds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StudySessionModelQueryObject
    on QueryBuilder<StudySessionModel, StudySessionModel, QFilterCondition> {}

extension StudySessionModelQueryLinks
    on QueryBuilder<StudySessionModel, StudySessionModel, QFilterCondition> {
  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      deck(FilterQuery<DeckModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'deck');
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      deckIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'deck', 0, true, 0, true);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      reviews(FilterQuery<ReviewResultModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'reviews');
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      reviewsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'reviews', length, true, length, true);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      reviewsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'reviews', 0, true, 0, true);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      reviewsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'reviews', 0, false, 999999, true);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      reviewsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'reviews', 0, true, length, include);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      reviewsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'reviews', length, include, 999999, true);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterFilterCondition>
      reviewsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'reviews', lower, includeLower, upper, includeUpper);
    });
  }
}

extension StudySessionModelQuerySortBy
    on QueryBuilder<StudySessionModel, StudySessionModel, QSortBy> {
  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByCompletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByCorrectAnswers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswers', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByCorrectAnswersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswers', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByIncorrectAnswers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incorrectAnswers', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByIncorrectAnswersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incorrectAnswers', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByMaxNewCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxNewCards', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByMaxNewCardsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxNewCards', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByMaxReviews() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxReviews', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByMaxReviewsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxReviews', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mode', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mode', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortBySessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortBySessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByShowHints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showHints', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByShowHintsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showHints', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByTotalCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByTotalCardsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByTotalTimeSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTimeSeconds', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      sortByTotalTimeSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTimeSeconds', Sort.desc);
    });
  }
}

extension StudySessionModelQuerySortThenBy
    on QueryBuilder<StudySessionModel, StudySessionModel, QSortThenBy> {
  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByCompletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByCorrectAnswers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswers', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByCorrectAnswersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswers', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByIncorrectAnswers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incorrectAnswers', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByIncorrectAnswersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incorrectAnswers', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByMaxNewCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxNewCards', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByMaxNewCardsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxNewCards', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByMaxReviews() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxReviews', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByMaxReviewsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxReviews', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mode', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mode', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenBySessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenBySessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByShowHints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showHints', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByShowHintsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showHints', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByTotalCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByTotalCardsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.desc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByTotalTimeSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTimeSeconds', Sort.asc);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QAfterSortBy>
      thenByTotalTimeSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTimeSeconds', Sort.desc);
    });
  }
}

extension StudySessionModelQueryWhereDistinct
    on QueryBuilder<StudySessionModel, StudySessionModel, QDistinct> {
  QueryBuilder<StudySessionModel, StudySessionModel, QDistinct>
      distinctByCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedAt');
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QDistinct>
      distinctByCorrectAnswers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'correctAnswers');
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QDistinct>
      distinctByIncorrectAnswers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'incorrectAnswers');
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QDistinct>
      distinctByMaxNewCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxNewCards');
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QDistinct>
      distinctByMaxReviews() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxReviews');
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QDistinct> distinctByMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QDistinct>
      distinctBySessionId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sessionId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QDistinct>
      distinctByShowHints() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'showHints');
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QDistinct>
      distinctByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startedAt');
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QDistinct>
      distinctByTotalCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalCards');
    });
  }

  QueryBuilder<StudySessionModel, StudySessionModel, QDistinct>
      distinctByTotalTimeSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalTimeSeconds');
    });
  }
}

extension StudySessionModelQueryProperty
    on QueryBuilder<StudySessionModel, StudySessionModel, QQueryProperty> {
  QueryBuilder<StudySessionModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<StudySessionModel, DateTime?, QQueryOperations>
      completedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedAt');
    });
  }

  QueryBuilder<StudySessionModel, int, QQueryOperations>
      correctAnswersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correctAnswers');
    });
  }

  QueryBuilder<StudySessionModel, int, QQueryOperations>
      incorrectAnswersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'incorrectAnswers');
    });
  }

  QueryBuilder<StudySessionModel, int, QQueryOperations> maxNewCardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxNewCards');
    });
  }

  QueryBuilder<StudySessionModel, int, QQueryOperations> maxReviewsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxReviews');
    });
  }

  QueryBuilder<StudySessionModel, StudyMode, QQueryOperations> modeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mode');
    });
  }

  QueryBuilder<StudySessionModel, String, QQueryOperations>
      sessionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sessionId');
    });
  }

  QueryBuilder<StudySessionModel, bool, QQueryOperations> showHintsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'showHints');
    });
  }

  QueryBuilder<StudySessionModel, DateTime, QQueryOperations>
      startedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startedAt');
    });
  }

  QueryBuilder<StudySessionModel, int, QQueryOperations> totalCardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalCards');
    });
  }

  QueryBuilder<StudySessionModel, int, QQueryOperations>
      totalTimeSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalTimeSeconds');
    });
  }
}
