// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDeckModelCollection on Isar {
  IsarCollection<DeckModel> get deckModels => this.collection();
}

const DeckModelSchema = CollectionSchema(
  name: r'DeckModel',
  id: 7835046003316378680,
  properties: {
    r'averageAccuracy': PropertySchema(
      id: 0,
      name: r'averageAccuracy',
      type: IsarType.double,
    ),
    r'cardCount': PropertySchema(
      id: 1,
      name: r'cardCount',
      type: IsarType.long,
    ),
    r'colorCode': PropertySchema(
      id: 2,
      name: r'colorCode',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 3,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'deckId': PropertySchema(
      id: 4,
      name: r'deckId',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 5,
      name: r'description',
      type: IsarType.string,
    ),
    r'lastStudiedAt': PropertySchema(
      id: 6,
      name: r'lastStudiedAt',
      type: IsarType.dateTime,
    ),
    r'masteredCardCount': PropertySchema(
      id: 7,
      name: r'masteredCardCount',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 8,
      name: r'name',
      type: IsarType.string,
    ),
    r'newCardCount': PropertySchema(
      id: 9,
      name: r'newCardCount',
      type: IsarType.long,
    ),
    r'reviewCardCount': PropertySchema(
      id: 10,
      name: r'reviewCardCount',
      type: IsarType.long,
    ),
    r'totalReviews': PropertySchema(
      id: 11,
      name: r'totalReviews',
      type: IsarType.long,
    ),
    r'totalStudyTimeMinutes': PropertySchema(
      id: 12,
      name: r'totalStudyTimeMinutes',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 13,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _deckModelEstimateSize,
  serialize: _deckModelSerialize,
  deserialize: _deckModelDeserialize,
  deserializeProp: _deckModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'deckId': IndexSchema(
      id: -1182505463565197889,
      name: r'deckId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'deckId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'flashcards': LinkSchema(
      id: -6803198730228395649,
      name: r'flashcards',
      target: r'FlashcardModel',
      single: false,
      linkName: r'deck',
    ),
    r'studySessions': LinkSchema(
      id: 2550337803315207379,
      name: r'studySessions',
      target: r'StudySessionModel',
      single: false,
      linkName: r'deck',
    )
  },
  embeddedSchemas: {},
  getId: _deckModelGetId,
  getLinks: _deckModelGetLinks,
  attach: _deckModelAttach,
  version: '3.1.0+1',
);

int _deckModelEstimateSize(
  DeckModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.colorCode.length * 3;
  bytesCount += 3 + object.deckId.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _deckModelSerialize(
  DeckModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.averageAccuracy);
  writer.writeLong(offsets[1], object.cardCount);
  writer.writeString(offsets[2], object.colorCode);
  writer.writeDateTime(offsets[3], object.createdAt);
  writer.writeString(offsets[4], object.deckId);
  writer.writeString(offsets[5], object.description);
  writer.writeDateTime(offsets[6], object.lastStudiedAt);
  writer.writeLong(offsets[7], object.masteredCardCount);
  writer.writeString(offsets[8], object.name);
  writer.writeLong(offsets[9], object.newCardCount);
  writer.writeLong(offsets[10], object.reviewCardCount);
  writer.writeLong(offsets[11], object.totalReviews);
  writer.writeLong(offsets[12], object.totalStudyTimeMinutes);
  writer.writeDateTime(offsets[13], object.updatedAt);
}

DeckModel _deckModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DeckModel();
  object.averageAccuracy = reader.readDouble(offsets[0]);
  object.cardCount = reader.readLong(offsets[1]);
  object.colorCode = reader.readString(offsets[2]);
  object.createdAt = reader.readDateTime(offsets[3]);
  object.deckId = reader.readString(offsets[4]);
  object.description = reader.readString(offsets[5]);
  object.id = id;
  object.lastStudiedAt = reader.readDateTimeOrNull(offsets[6]);
  object.masteredCardCount = reader.readLong(offsets[7]);
  object.name = reader.readString(offsets[8]);
  object.newCardCount = reader.readLong(offsets[9]);
  object.reviewCardCount = reader.readLong(offsets[10]);
  object.totalReviews = reader.readLong(offsets[11]);
  object.totalStudyTimeMinutes = reader.readLong(offsets[12]);
  object.updatedAt = reader.readDateTime(offsets[13]);
  return object;
}

P _deckModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _deckModelGetId(DeckModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _deckModelGetLinks(DeckModel object) {
  return [object.flashcards, object.studySessions];
}

void _deckModelAttach(IsarCollection<dynamic> col, Id id, DeckModel object) {
  object.id = id;
  object.flashcards
      .attach(col, col.isar.collection<FlashcardModel>(), r'flashcards', id);
  object.studySessions.attach(
      col, col.isar.collection<StudySessionModel>(), r'studySessions', id);
}

extension DeckModelByIndex on IsarCollection<DeckModel> {
  Future<DeckModel?> getByDeckId(String deckId) {
    return getByIndex(r'deckId', [deckId]);
  }

  DeckModel? getByDeckIdSync(String deckId) {
    return getByIndexSync(r'deckId', [deckId]);
  }

  Future<bool> deleteByDeckId(String deckId) {
    return deleteByIndex(r'deckId', [deckId]);
  }

  bool deleteByDeckIdSync(String deckId) {
    return deleteByIndexSync(r'deckId', [deckId]);
  }

  Future<List<DeckModel?>> getAllByDeckId(List<String> deckIdValues) {
    final values = deckIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'deckId', values);
  }

  List<DeckModel?> getAllByDeckIdSync(List<String> deckIdValues) {
    final values = deckIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'deckId', values);
  }

  Future<int> deleteAllByDeckId(List<String> deckIdValues) {
    final values = deckIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'deckId', values);
  }

  int deleteAllByDeckIdSync(List<String> deckIdValues) {
    final values = deckIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'deckId', values);
  }

  Future<Id> putByDeckId(DeckModel object) {
    return putByIndex(r'deckId', object);
  }

  Id putByDeckIdSync(DeckModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'deckId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByDeckId(List<DeckModel> objects) {
    return putAllByIndex(r'deckId', objects);
  }

  List<Id> putAllByDeckIdSync(List<DeckModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'deckId', objects, saveLinks: saveLinks);
  }
}

extension DeckModelQueryWhereSort
    on QueryBuilder<DeckModel, DeckModel, QWhere> {
  QueryBuilder<DeckModel, DeckModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DeckModelQueryWhere
    on QueryBuilder<DeckModel, DeckModel, QWhereClause> {
  QueryBuilder<DeckModel, DeckModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<DeckModel, DeckModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<DeckModel, DeckModel, QAfterWhereClause> deckIdEqualTo(
      String deckId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'deckId',
        value: [deckId],
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterWhereClause> deckIdNotEqualTo(
      String deckId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'deckId',
              lower: [],
              upper: [deckId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'deckId',
              lower: [deckId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'deckId',
              lower: [deckId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'deckId',
              lower: [],
              upper: [deckId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension DeckModelQueryFilter
    on QueryBuilder<DeckModel, DeckModel, QFilterCondition> {
  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      averageAccuracyEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'averageAccuracy',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      averageAccuracyGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'averageAccuracy',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      averageAccuracyLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'averageAccuracy',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      averageAccuracyBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'averageAccuracy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> cardCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      cardCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> cardCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> cardCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> colorCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      colorCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> colorCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> colorCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> colorCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> colorCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> colorCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> colorCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'colorCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> colorCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      colorCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'colorCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> deckIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deckId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> deckIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deckId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> deckIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deckId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> deckIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deckId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> deckIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deckId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> deckIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deckId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> deckIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deckId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> deckIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deckId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> deckIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deckId',
        value: '',
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> deckIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deckId',
        value: '',
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      lastStudiedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastStudiedAt',
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      lastStudiedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastStudiedAt',
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      lastStudiedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastStudiedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      lastStudiedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastStudiedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      lastStudiedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastStudiedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      lastStudiedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastStudiedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      masteredCardCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'masteredCardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      masteredCardCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'masteredCardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      masteredCardCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'masteredCardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      masteredCardCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'masteredCardCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> newCardCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newCardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      newCardCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'newCardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      newCardCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'newCardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> newCardCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'newCardCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      reviewCardCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reviewCardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      reviewCardCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reviewCardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      reviewCardCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reviewCardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      reviewCardCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reviewCardCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> totalReviewsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalReviews',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      totalReviewsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalReviews',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      totalReviewsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalReviews',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> totalReviewsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalReviews',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      totalStudyTimeMinutesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalStudyTimeMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      totalStudyTimeMinutesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalStudyTimeMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      totalStudyTimeMinutesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalStudyTimeMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      totalStudyTimeMinutesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalStudyTimeMinutes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DeckModelQueryObject
    on QueryBuilder<DeckModel, DeckModel, QFilterCondition> {}

extension DeckModelQueryLinks
    on QueryBuilder<DeckModel, DeckModel, QFilterCondition> {
  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> flashcards(
      FilterQuery<FlashcardModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'flashcards');
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      flashcardsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'flashcards', length, true, length, true);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      flashcardsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'flashcards', 0, true, 0, true);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      flashcardsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'flashcards', 0, false, 999999, true);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      flashcardsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'flashcards', 0, true, length, include);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      flashcardsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'flashcards', length, include, 999999, true);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      flashcardsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'flashcards', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition> studySessions(
      FilterQuery<StudySessionModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'studySessions');
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      studySessionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'studySessions', length, true, length, true);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      studySessionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'studySessions', 0, true, 0, true);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      studySessionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'studySessions', 0, false, 999999, true);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      studySessionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'studySessions', 0, true, length, include);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      studySessionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'studySessions', length, include, 999999, true);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterFilterCondition>
      studySessionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'studySessions', lower, includeLower, upper, includeUpper);
    });
  }
}

extension DeckModelQuerySortBy on QueryBuilder<DeckModel, DeckModel, QSortBy> {
  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByAverageAccuracy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageAccuracy', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByAverageAccuracyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageAccuracy', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByCardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardCount', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByCardCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardCount', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByColorCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorCode', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByColorCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorCode', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByDeckId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deckId', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByDeckIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deckId', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByLastStudiedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastStudiedAt', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByLastStudiedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastStudiedAt', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByMasteredCardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'masteredCardCount', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy>
      sortByMasteredCardCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'masteredCardCount', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByNewCardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newCardCount', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByNewCardCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newCardCount', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByReviewCardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewCardCount', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByReviewCardCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewCardCount', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByTotalReviews() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalReviews', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByTotalReviewsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalReviews', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy>
      sortByTotalStudyTimeMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalStudyTimeMinutes', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy>
      sortByTotalStudyTimeMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalStudyTimeMinutes', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension DeckModelQuerySortThenBy
    on QueryBuilder<DeckModel, DeckModel, QSortThenBy> {
  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByAverageAccuracy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageAccuracy', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByAverageAccuracyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageAccuracy', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByCardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardCount', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByCardCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardCount', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByColorCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorCode', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByColorCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorCode', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByDeckId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deckId', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByDeckIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deckId', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByLastStudiedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastStudiedAt', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByLastStudiedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastStudiedAt', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByMasteredCardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'masteredCardCount', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy>
      thenByMasteredCardCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'masteredCardCount', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByNewCardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newCardCount', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByNewCardCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newCardCount', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByReviewCardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewCardCount', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByReviewCardCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewCardCount', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByTotalReviews() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalReviews', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByTotalReviewsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalReviews', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy>
      thenByTotalStudyTimeMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalStudyTimeMinutes', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy>
      thenByTotalStudyTimeMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalStudyTimeMinutes', Sort.desc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension DeckModelQueryWhereDistinct
    on QueryBuilder<DeckModel, DeckModel, QDistinct> {
  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByAverageAccuracy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'averageAccuracy');
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByCardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardCount');
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByColorCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByDeckId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deckId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByLastStudiedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastStudiedAt');
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByMasteredCardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'masteredCardCount');
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByNewCardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'newCardCount');
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByReviewCardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reviewCardCount');
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByTotalReviews() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalReviews');
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct>
      distinctByTotalStudyTimeMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalStudyTimeMinutes');
    });
  }

  QueryBuilder<DeckModel, DeckModel, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension DeckModelQueryProperty
    on QueryBuilder<DeckModel, DeckModel, QQueryProperty> {
  QueryBuilder<DeckModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DeckModel, double, QQueryOperations> averageAccuracyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'averageAccuracy');
    });
  }

  QueryBuilder<DeckModel, int, QQueryOperations> cardCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardCount');
    });
  }

  QueryBuilder<DeckModel, String, QQueryOperations> colorCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorCode');
    });
  }

  QueryBuilder<DeckModel, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<DeckModel, String, QQueryOperations> deckIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deckId');
    });
  }

  QueryBuilder<DeckModel, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<DeckModel, DateTime?, QQueryOperations> lastStudiedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastStudiedAt');
    });
  }

  QueryBuilder<DeckModel, int, QQueryOperations> masteredCardCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'masteredCardCount');
    });
  }

  QueryBuilder<DeckModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<DeckModel, int, QQueryOperations> newCardCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'newCardCount');
    });
  }

  QueryBuilder<DeckModel, int, QQueryOperations> reviewCardCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reviewCardCount');
    });
  }

  QueryBuilder<DeckModel, int, QQueryOperations> totalReviewsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalReviews');
    });
  }

  QueryBuilder<DeckModel, int, QQueryOperations>
      totalStudyTimeMinutesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalStudyTimeMinutes');
    });
  }

  QueryBuilder<DeckModel, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
