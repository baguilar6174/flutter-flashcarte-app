// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFlashcardModelCollection on Isar {
  IsarCollection<FlashcardModel> get flashcardModels => this.collection();
}

const FlashcardModelSchema = CollectionSchema(
  name: r'FlashcardModel',
  id: 429812019528624768,
  properties: {
    r'back': PropertySchema(
      id: 0,
      name: r'back',
      type: IsarType.string,
    ),
    r'cardId': PropertySchema(
      id: 1,
      name: r'cardId',
      type: IsarType.string,
    ),
    r'correctStreak': PropertySchema(
      id: 2,
      name: r'correctStreak',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 3,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'difficulty': PropertySchema(
      id: 4,
      name: r'difficulty',
      type: IsarType.double,
    ),
    r'difficultyCategory': PropertySchema(
      id: 5,
      name: r'difficultyCategory',
      type: IsarType.long,
    ),
    r'easeFactor': PropertySchema(
      id: 6,
      name: r'easeFactor',
      type: IsarType.double,
    ),
    r'front': PropertySchema(
      id: 7,
      name: r'front',
      type: IsarType.string,
    ),
    r'incorrectCount': PropertySchema(
      id: 8,
      name: r'incorrectCount',
      type: IsarType.long,
    ),
    r'isNew': PropertySchema(
      id: 9,
      name: r'isNew',
      type: IsarType.bool,
    ),
    r'lastReviewedAt': PropertySchema(
      id: 10,
      name: r'lastReviewedAt',
      type: IsarType.dateTime,
    ),
    r'needsReview': PropertySchema(
      id: 11,
      name: r'needsReview',
      type: IsarType.bool,
    ),
    r'nextReviewDate': PropertySchema(
      id: 12,
      name: r'nextReviewDate',
      type: IsarType.dateTime,
    ),
    r'reviewCount': PropertySchema(
      id: 13,
      name: r'reviewCount',
      type: IsarType.long,
    ),
    r'searchText': PropertySchema(
      id: 14,
      name: r'searchText',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 15,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _flashcardModelEstimateSize,
  serialize: _flashcardModelSerialize,
  deserialize: _flashcardModelDeserialize,
  deserializeProp: _flashcardModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'cardId': IndexSchema(
      id: -8501089313549364976,
      name: r'cardId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'cardId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'searchText': IndexSchema(
      id: -8276020959797920665,
      name: r'searchText',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'searchText',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    ),
    r'isNew': IndexSchema(
      id: -4022833713322362044,
      name: r'isNew',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isNew',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'needsReview': IndexSchema(
      id: 9078383057249155778,
      name: r'needsReview',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'needsReview',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'difficultyCategory': IndexSchema(
      id: 8271822863108224787,
      name: r'difficultyCategory',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'difficultyCategory',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'deck': LinkSchema(
      id: 6919308194883238625,
      name: r'deck',
      target: r'DeckModel',
      single: true,
    ),
    r'tags': LinkSchema(
      id: -8030013939604536216,
      name: r'tags',
      target: r'TagModel',
      single: false,
    ),
    r'reviewResults': LinkSchema(
      id: -4458417698754580265,
      name: r'reviewResults',
      target: r'ReviewResultModel',
      single: false,
      linkName: r'flashcard',
    )
  },
  embeddedSchemas: {},
  getId: _flashcardModelGetId,
  getLinks: _flashcardModelGetLinks,
  attach: _flashcardModelAttach,
  version: '3.1.0+1',
);

int _flashcardModelEstimateSize(
  FlashcardModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.back.length * 3;
  bytesCount += 3 + object.cardId.length * 3;
  bytesCount += 3 + object.front.length * 3;
  bytesCount += 3 + object.searchText.length * 3;
  return bytesCount;
}

void _flashcardModelSerialize(
  FlashcardModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.back);
  writer.writeString(offsets[1], object.cardId);
  writer.writeLong(offsets[2], object.correctStreak);
  writer.writeDateTime(offsets[3], object.createdAt);
  writer.writeDouble(offsets[4], object.difficulty);
  writer.writeLong(offsets[5], object.difficultyCategory);
  writer.writeDouble(offsets[6], object.easeFactor);
  writer.writeString(offsets[7], object.front);
  writer.writeLong(offsets[8], object.incorrectCount);
  writer.writeBool(offsets[9], object.isNew);
  writer.writeDateTime(offsets[10], object.lastReviewedAt);
  writer.writeBool(offsets[11], object.needsReview);
  writer.writeDateTime(offsets[12], object.nextReviewDate);
  writer.writeLong(offsets[13], object.reviewCount);
  writer.writeString(offsets[14], object.searchText);
  writer.writeDateTime(offsets[15], object.updatedAt);
}

FlashcardModel _flashcardModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlashcardModel();
  object.back = reader.readString(offsets[0]);
  object.cardId = reader.readString(offsets[1]);
  object.correctStreak = reader.readLong(offsets[2]);
  object.createdAt = reader.readDateTime(offsets[3]);
  object.difficulty = reader.readDouble(offsets[4]);
  object.difficultyCategory = reader.readLong(offsets[5]);
  object.easeFactor = reader.readDouble(offsets[6]);
  object.front = reader.readString(offsets[7]);
  object.id = id;
  object.incorrectCount = reader.readLong(offsets[8]);
  object.isNew = reader.readBool(offsets[9]);
  object.lastReviewedAt = reader.readDateTimeOrNull(offsets[10]);
  object.needsReview = reader.readBool(offsets[11]);
  object.nextReviewDate = reader.readDateTimeOrNull(offsets[12]);
  object.reviewCount = reader.readLong(offsets[13]);
  object.searchText = reader.readString(offsets[14]);
  object.updatedAt = reader.readDateTime(offsets[15]);
  return object;
}

P _flashcardModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 11:
      return (reader.readBool(offset)) as P;
    case 12:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _flashcardModelGetId(FlashcardModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _flashcardModelGetLinks(FlashcardModel object) {
  return [object.deck, object.tags, object.reviewResults];
}

void _flashcardModelAttach(
    IsarCollection<dynamic> col, Id id, FlashcardModel object) {
  object.id = id;
  object.deck.attach(col, col.isar.collection<DeckModel>(), r'deck', id);
  object.tags.attach(col, col.isar.collection<TagModel>(), r'tags', id);
  object.reviewResults.attach(
      col, col.isar.collection<ReviewResultModel>(), r'reviewResults', id);
}

extension FlashcardModelByIndex on IsarCollection<FlashcardModel> {
  Future<FlashcardModel?> getByCardId(String cardId) {
    return getByIndex(r'cardId', [cardId]);
  }

  FlashcardModel? getByCardIdSync(String cardId) {
    return getByIndexSync(r'cardId', [cardId]);
  }

  Future<bool> deleteByCardId(String cardId) {
    return deleteByIndex(r'cardId', [cardId]);
  }

  bool deleteByCardIdSync(String cardId) {
    return deleteByIndexSync(r'cardId', [cardId]);
  }

  Future<List<FlashcardModel?>> getAllByCardId(List<String> cardIdValues) {
    final values = cardIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'cardId', values);
  }

  List<FlashcardModel?> getAllByCardIdSync(List<String> cardIdValues) {
    final values = cardIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'cardId', values);
  }

  Future<int> deleteAllByCardId(List<String> cardIdValues) {
    final values = cardIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'cardId', values);
  }

  int deleteAllByCardIdSync(List<String> cardIdValues) {
    final values = cardIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'cardId', values);
  }

  Future<Id> putByCardId(FlashcardModel object) {
    return putByIndex(r'cardId', object);
  }

  Id putByCardIdSync(FlashcardModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'cardId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCardId(List<FlashcardModel> objects) {
    return putAllByIndex(r'cardId', objects);
  }

  List<Id> putAllByCardIdSync(List<FlashcardModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'cardId', objects, saveLinks: saveLinks);
  }
}

extension FlashcardModelQueryWhereSort
    on QueryBuilder<FlashcardModel, FlashcardModel, QWhere> {
  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhere> anyIsNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isNew'),
      );
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhere> anyNeedsReview() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'needsReview'),
      );
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhere>
      anyDifficultyCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'difficultyCategory'),
      );
    });
  }
}

extension FlashcardModelQueryWhere
    on QueryBuilder<FlashcardModel, FlashcardModel, QWhereClause> {
  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause> cardIdEqualTo(
      String cardId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'cardId',
        value: [cardId],
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause>
      cardIdNotEqualTo(String cardId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cardId',
              lower: [],
              upper: [cardId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cardId',
              lower: [cardId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cardId',
              lower: [cardId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cardId',
              lower: [],
              upper: [cardId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause>
      searchTextEqualTo(String searchText) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'searchText',
        value: [searchText],
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause>
      searchTextNotEqualTo(String searchText) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'searchText',
              lower: [],
              upper: [searchText],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'searchText',
              lower: [searchText],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'searchText',
              lower: [searchText],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'searchText',
              lower: [],
              upper: [searchText],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause> isNewEqualTo(
      bool isNew) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isNew',
        value: [isNew],
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause>
      isNewNotEqualTo(bool isNew) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isNew',
              lower: [],
              upper: [isNew],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isNew',
              lower: [isNew],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isNew',
              lower: [isNew],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isNew',
              lower: [],
              upper: [isNew],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause>
      needsReviewEqualTo(bool needsReview) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'needsReview',
        value: [needsReview],
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause>
      needsReviewNotEqualTo(bool needsReview) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'needsReview',
              lower: [],
              upper: [needsReview],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'needsReview',
              lower: [needsReview],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'needsReview',
              lower: [needsReview],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'needsReview',
              lower: [],
              upper: [needsReview],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause>
      difficultyCategoryEqualTo(int difficultyCategory) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'difficultyCategory',
        value: [difficultyCategory],
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause>
      difficultyCategoryNotEqualTo(int difficultyCategory) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'difficultyCategory',
              lower: [],
              upper: [difficultyCategory],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'difficultyCategory',
              lower: [difficultyCategory],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'difficultyCategory',
              lower: [difficultyCategory],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'difficultyCategory',
              lower: [],
              upper: [difficultyCategory],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause>
      difficultyCategoryGreaterThan(
    int difficultyCategory, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'difficultyCategory',
        lower: [difficultyCategory],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause>
      difficultyCategoryLessThan(
    int difficultyCategory, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'difficultyCategory',
        lower: [],
        upper: [difficultyCategory],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterWhereClause>
      difficultyCategoryBetween(
    int lowerDifficultyCategory,
    int upperDifficultyCategory, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'difficultyCategory',
        lower: [lowerDifficultyCategory],
        includeLower: includeLower,
        upper: [upperDifficultyCategory],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FlashcardModelQueryFilter
    on QueryBuilder<FlashcardModel, FlashcardModel, QFilterCondition> {
  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      backEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'back',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      backGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'back',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      backLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'back',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      backBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'back',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      backStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'back',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      backEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'back',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      backContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'back',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      backMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'back',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      backIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'back',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      backIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'back',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      cardIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      cardIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      cardIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      cardIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      cardIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      cardIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      cardIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      cardIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cardId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      cardIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardId',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      cardIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cardId',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      correctStreakEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctStreak',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      correctStreakGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctStreak',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      correctStreakLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctStreak',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      correctStreakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctStreak',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
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

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      createdAtLessThan(
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

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      createdAtBetween(
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

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      difficultyEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'difficulty',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      difficultyGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'difficulty',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      difficultyLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'difficulty',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      difficultyBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'difficulty',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      difficultyCategoryEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'difficultyCategory',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      difficultyCategoryGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'difficultyCategory',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      difficultyCategoryLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'difficultyCategory',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      difficultyCategoryBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'difficultyCategory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      easeFactorEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'easeFactor',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      easeFactorGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'easeFactor',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      easeFactorLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'easeFactor',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      easeFactorBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'easeFactor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      frontEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'front',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      frontGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'front',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      frontLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'front',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      frontBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'front',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      frontStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'front',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      frontEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'front',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      frontContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'front',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      frontMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'front',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      frontIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'front',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      frontIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'front',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
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

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
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

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      incorrectCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'incorrectCount',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      incorrectCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'incorrectCount',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      incorrectCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'incorrectCount',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      incorrectCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'incorrectCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      isNewEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isNew',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      lastReviewedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastReviewedAt',
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      lastReviewedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastReviewedAt',
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      lastReviewedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastReviewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      lastReviewedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastReviewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      lastReviewedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastReviewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      lastReviewedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastReviewedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      needsReviewEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'needsReview',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      nextReviewDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nextReviewDate',
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      nextReviewDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nextReviewDate',
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      nextReviewDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nextReviewDate',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      nextReviewDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nextReviewDate',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      nextReviewDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nextReviewDate',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      nextReviewDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nextReviewDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      reviewCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reviewCount',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      reviewCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reviewCount',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      reviewCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reviewCount',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      reviewCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reviewCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      searchTextEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      searchTextGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'searchText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      searchTextLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'searchText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      searchTextBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'searchText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      searchTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'searchText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      searchTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'searchText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      searchTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'searchText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      searchTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'searchText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      searchTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchText',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      searchTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'searchText',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
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

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      updatedAtLessThan(
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

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      updatedAtBetween(
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

extension FlashcardModelQueryObject
    on QueryBuilder<FlashcardModel, FlashcardModel, QFilterCondition> {}

extension FlashcardModelQueryLinks
    on QueryBuilder<FlashcardModel, FlashcardModel, QFilterCondition> {
  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition> deck(
      FilterQuery<DeckModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'deck');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      deckIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'deck', 0, true, 0, true);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition> tags(
      FilterQuery<TagModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'tags');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      tagsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', length, true, length, true);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, true, 0, true);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, false, 999999, true);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, true, length, include);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', length, include, 999999, true);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'tags', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      reviewResults(FilterQuery<ReviewResultModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'reviewResults');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      reviewResultsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'reviewResults', length, true, length, true);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      reviewResultsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'reviewResults', 0, true, 0, true);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      reviewResultsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'reviewResults', 0, false, 999999, true);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      reviewResultsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'reviewResults', 0, true, length, include);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      reviewResultsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'reviewResults', length, include, 999999, true);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterFilterCondition>
      reviewResultsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'reviewResults', lower, includeLower, upper, includeUpper);
    });
  }
}

extension FlashcardModelQuerySortBy
    on QueryBuilder<FlashcardModel, FlashcardModel, QSortBy> {
  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> sortByBack() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'back', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> sortByBackDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'back', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> sortByCardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardId', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByCardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardId', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByCorrectStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctStreak', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByCorrectStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctStreak', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByDifficulty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficulty', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByDifficultyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficulty', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByDifficultyCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyCategory', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByDifficultyCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyCategory', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByEaseFactor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'easeFactor', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByEaseFactorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'easeFactor', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> sortByFront() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'front', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> sortByFrontDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'front', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByIncorrectCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incorrectCount', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByIncorrectCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incorrectCount', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> sortByIsNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNew', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> sortByIsNewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNew', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByLastReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReviewedAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByLastReviewedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReviewedAt', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByNeedsReview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsReview', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByNeedsReviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsReview', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByNextReviewDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextReviewDate', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByNextReviewDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextReviewDate', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByReviewCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewCount', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByReviewCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewCount', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortBySearchText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchText', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortBySearchTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchText', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension FlashcardModelQuerySortThenBy
    on QueryBuilder<FlashcardModel, FlashcardModel, QSortThenBy> {
  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> thenByBack() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'back', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> thenByBackDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'back', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> thenByCardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardId', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByCardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardId', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByCorrectStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctStreak', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByCorrectStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctStreak', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByDifficulty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficulty', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByDifficultyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficulty', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByDifficultyCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyCategory', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByDifficultyCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyCategory', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByEaseFactor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'easeFactor', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByEaseFactorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'easeFactor', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> thenByFront() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'front', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> thenByFrontDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'front', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByIncorrectCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incorrectCount', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByIncorrectCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incorrectCount', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> thenByIsNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNew', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> thenByIsNewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNew', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByLastReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReviewedAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByLastReviewedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReviewedAt', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByNeedsReview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsReview', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByNeedsReviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsReview', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByNextReviewDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextReviewDate', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByNextReviewDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextReviewDate', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByReviewCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewCount', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByReviewCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewCount', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenBySearchText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchText', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenBySearchTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchText', Sort.desc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension FlashcardModelQueryWhereDistinct
    on QueryBuilder<FlashcardModel, FlashcardModel, QDistinct> {
  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct> distinctByBack(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'back', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct> distinctByCardId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct>
      distinctByCorrectStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'correctStreak');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct>
      distinctByDifficulty() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'difficulty');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct>
      distinctByDifficultyCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'difficultyCategory');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct>
      distinctByEaseFactor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'easeFactor');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct> distinctByFront(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'front', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct>
      distinctByIncorrectCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'incorrectCount');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct> distinctByIsNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isNew');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct>
      distinctByLastReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastReviewedAt');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct>
      distinctByNeedsReview() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'needsReview');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct>
      distinctByNextReviewDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nextReviewDate');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct>
      distinctByReviewCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reviewCount');
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct> distinctBySearchText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'searchText', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashcardModel, FlashcardModel, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension FlashcardModelQueryProperty
    on QueryBuilder<FlashcardModel, FlashcardModel, QQueryProperty> {
  QueryBuilder<FlashcardModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FlashcardModel, String, QQueryOperations> backProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'back');
    });
  }

  QueryBuilder<FlashcardModel, String, QQueryOperations> cardIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardId');
    });
  }

  QueryBuilder<FlashcardModel, int, QQueryOperations> correctStreakProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correctStreak');
    });
  }

  QueryBuilder<FlashcardModel, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<FlashcardModel, double, QQueryOperations> difficultyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'difficulty');
    });
  }

  QueryBuilder<FlashcardModel, int, QQueryOperations>
      difficultyCategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'difficultyCategory');
    });
  }

  QueryBuilder<FlashcardModel, double, QQueryOperations> easeFactorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'easeFactor');
    });
  }

  QueryBuilder<FlashcardModel, String, QQueryOperations> frontProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'front');
    });
  }

  QueryBuilder<FlashcardModel, int, QQueryOperations> incorrectCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'incorrectCount');
    });
  }

  QueryBuilder<FlashcardModel, bool, QQueryOperations> isNewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isNew');
    });
  }

  QueryBuilder<FlashcardModel, DateTime?, QQueryOperations>
      lastReviewedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastReviewedAt');
    });
  }

  QueryBuilder<FlashcardModel, bool, QQueryOperations> needsReviewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'needsReview');
    });
  }

  QueryBuilder<FlashcardModel, DateTime?, QQueryOperations>
      nextReviewDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nextReviewDate');
    });
  }

  QueryBuilder<FlashcardModel, int, QQueryOperations> reviewCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reviewCount');
    });
  }

  QueryBuilder<FlashcardModel, String, QQueryOperations> searchTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'searchText');
    });
  }

  QueryBuilder<FlashcardModel, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
