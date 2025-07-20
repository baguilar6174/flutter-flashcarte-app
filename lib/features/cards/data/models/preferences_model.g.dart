// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserPreferencesModelCollection on Isar {
  IsarCollection<UserPreferencesModel> get userPreferencesModels =>
      this.collection();
}

const UserPreferencesModelSchema = CollectionSchema(
  name: r'UserPreferencesModel',
  id: 3603656307210587948,
  properties: {
    r'dailyGoal': PropertySchema(
      id: 0,
      name: r'dailyGoal',
      type: IsarType.long,
    ),
    r'enableBreakReminders': PropertySchema(
      id: 1,
      name: r'enableBreakReminders',
      type: IsarType.bool,
    ),
    r'enableNotifications': PropertySchema(
      id: 2,
      name: r'enableNotifications',
      type: IsarType.bool,
    ),
    r'enableSpacedRepetition': PropertySchema(
      id: 3,
      name: r'enableSpacedRepetition',
      type: IsarType.bool,
    ),
    r'languageCode': PropertySchema(
      id: 4,
      name: r'languageCode',
      type: IsarType.string,
    ),
    r'maxNewCardsPerDay': PropertySchema(
      id: 5,
      name: r'maxNewCardsPerDay',
      type: IsarType.long,
    ),
    r'maxReviewsPerDay': PropertySchema(
      id: 6,
      name: r'maxReviewsPerDay',
      type: IsarType.long,
    ),
    r'playAudio': PropertySchema(
      id: 7,
      name: r'playAudio',
      type: IsarType.bool,
    ),
    r'preferredSessionLengthMinutes': PropertySchema(
      id: 8,
      name: r'preferredSessionLengthMinutes',
      type: IsarType.long,
    ),
    r'reviewOrder': PropertySchema(
      id: 9,
      name: r'reviewOrder',
      type: IsarType.string,
      enumMap: _UserPreferencesModelreviewOrderEnumValueMap,
    ),
    r'showHints': PropertySchema(
      id: 10,
      name: r'showHints',
      type: IsarType.bool,
    ),
    r'themeMode': PropertySchema(
      id: 11,
      name: r'themeMode',
      type: IsarType.string,
    )
  },
  estimateSize: _userPreferencesModelEstimateSize,
  serialize: _userPreferencesModelSerialize,
  deserialize: _userPreferencesModelDeserialize,
  deserializeProp: _userPreferencesModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userPreferencesModelGetId,
  getLinks: _userPreferencesModelGetLinks,
  attach: _userPreferencesModelAttach,
  version: '3.1.0+1',
);

int _userPreferencesModelEstimateSize(
  UserPreferencesModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.languageCode.length * 3;
  bytesCount += 3 + object.reviewOrder.name.length * 3;
  bytesCount += 3 + object.themeMode.length * 3;
  return bytesCount;
}

void _userPreferencesModelSerialize(
  UserPreferencesModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.dailyGoal);
  writer.writeBool(offsets[1], object.enableBreakReminders);
  writer.writeBool(offsets[2], object.enableNotifications);
  writer.writeBool(offsets[3], object.enableSpacedRepetition);
  writer.writeString(offsets[4], object.languageCode);
  writer.writeLong(offsets[5], object.maxNewCardsPerDay);
  writer.writeLong(offsets[6], object.maxReviewsPerDay);
  writer.writeBool(offsets[7], object.playAudio);
  writer.writeLong(offsets[8], object.preferredSessionLengthMinutes);
  writer.writeString(offsets[9], object.reviewOrder.name);
  writer.writeBool(offsets[10], object.showHints);
  writer.writeString(offsets[11], object.themeMode);
}

UserPreferencesModel _userPreferencesModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserPreferencesModel();
  object.dailyGoal = reader.readLong(offsets[0]);
  object.enableBreakReminders = reader.readBool(offsets[1]);
  object.enableNotifications = reader.readBool(offsets[2]);
  object.enableSpacedRepetition = reader.readBool(offsets[3]);
  object.id = id;
  object.languageCode = reader.readString(offsets[4]);
  object.maxNewCardsPerDay = reader.readLong(offsets[5]);
  object.maxReviewsPerDay = reader.readLong(offsets[6]);
  object.playAudio = reader.readBool(offsets[7]);
  object.preferredSessionLengthMinutes = reader.readLong(offsets[8]);
  object.reviewOrder = _UserPreferencesModelreviewOrderValueEnumMap[
          reader.readStringOrNull(offsets[9])] ??
      StudyOrder.random;
  object.showHints = reader.readBool(offsets[10]);
  object.themeMode = reader.readString(offsets[11]);
  return object;
}

P _userPreferencesModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (_UserPreferencesModelreviewOrderValueEnumMap[
              reader.readStringOrNull(offset)] ??
          StudyOrder.random) as P;
    case 10:
      return (reader.readBool(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _UserPreferencesModelreviewOrderEnumValueMap = {
  r'random': r'random',
  r'oldest': r'oldest',
  r'hardest': r'hardest',
  r'easiest': r'easiest',
  r'newest': r'newest',
};
const _UserPreferencesModelreviewOrderValueEnumMap = {
  r'random': StudyOrder.random,
  r'oldest': StudyOrder.oldest,
  r'hardest': StudyOrder.hardest,
  r'easiest': StudyOrder.easiest,
  r'newest': StudyOrder.newest,
};

Id _userPreferencesModelGetId(UserPreferencesModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userPreferencesModelGetLinks(
    UserPreferencesModel object) {
  return [];
}

void _userPreferencesModelAttach(
    IsarCollection<dynamic> col, Id id, UserPreferencesModel object) {
  object.id = id;
}

extension UserPreferencesModelQueryWhereSort
    on QueryBuilder<UserPreferencesModel, UserPreferencesModel, QWhere> {
  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserPreferencesModelQueryWhere
    on QueryBuilder<UserPreferencesModel, UserPreferencesModel, QWhereClause> {
  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterWhereClause>
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterWhereClause>
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
}

extension UserPreferencesModelQueryFilter on QueryBuilder<UserPreferencesModel,
    UserPreferencesModel, QFilterCondition> {
  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyGoalEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dailyGoal',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyGoalGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dailyGoal',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyGoalLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dailyGoal',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> dailyGoalBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dailyGoal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> enableBreakRemindersEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enableBreakReminders',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> enableNotificationsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enableNotifications',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> enableSpacedRepetitionEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enableSpacedRepetition',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'languageCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      languageCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      languageCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'languageCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languageCode',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> languageCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'languageCode',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> maxNewCardsPerDayEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxNewCardsPerDay',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> maxNewCardsPerDayGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxNewCardsPerDay',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> maxNewCardsPerDayLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxNewCardsPerDay',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> maxNewCardsPerDayBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxNewCardsPerDay',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> maxReviewsPerDayEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxReviewsPerDay',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> maxReviewsPerDayGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxReviewsPerDay',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> maxReviewsPerDayLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxReviewsPerDay',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> maxReviewsPerDayBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxReviewsPerDay',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> playAudioEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playAudio',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredSessionLengthMinutesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preferredSessionLengthMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredSessionLengthMinutesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'preferredSessionLengthMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredSessionLengthMinutesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'preferredSessionLengthMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> preferredSessionLengthMinutesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'preferredSessionLengthMinutes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> reviewOrderEqualTo(
    StudyOrder value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reviewOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> reviewOrderGreaterThan(
    StudyOrder value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reviewOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> reviewOrderLessThan(
    StudyOrder value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reviewOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> reviewOrderBetween(
    StudyOrder lower,
    StudyOrder upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reviewOrder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> reviewOrderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reviewOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> reviewOrderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reviewOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      reviewOrderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reviewOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      reviewOrderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reviewOrder',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> reviewOrderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reviewOrder',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> reviewOrderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reviewOrder',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> showHintsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'showHints',
        value: value,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> themeModeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> themeModeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> themeModeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> themeModeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'themeMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> themeModeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> themeModeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      themeModeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
          QAfterFilterCondition>
      themeModeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'themeMode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> themeModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeMode',
        value: '',
      ));
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel,
      QAfterFilterCondition> themeModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'themeMode',
        value: '',
      ));
    });
  }
}

extension UserPreferencesModelQueryObject on QueryBuilder<UserPreferencesModel,
    UserPreferencesModel, QFilterCondition> {}

extension UserPreferencesModelQueryLinks on QueryBuilder<UserPreferencesModel,
    UserPreferencesModel, QFilterCondition> {}

extension UserPreferencesModelQuerySortBy
    on QueryBuilder<UserPreferencesModel, UserPreferencesModel, QSortBy> {
  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByDailyGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyGoal', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByDailyGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyGoal', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByEnableBreakReminders() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBreakReminders', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByEnableBreakRemindersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBreakReminders', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByEnableNotifications() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableNotifications', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByEnableNotificationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableNotifications', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByEnableSpacedRepetition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableSpacedRepetition', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByEnableSpacedRepetitionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableSpacedRepetition', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByLanguageCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByLanguageCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByMaxNewCardsPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxNewCardsPerDay', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByMaxNewCardsPerDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxNewCardsPerDay', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByMaxReviewsPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxReviewsPerDay', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByMaxReviewsPerDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxReviewsPerDay', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByPlayAudio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playAudio', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByPlayAudioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playAudio', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByPreferredSessionLengthMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferredSessionLengthMinutes', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByPreferredSessionLengthMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferredSessionLengthMinutes', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByReviewOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewOrder', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByReviewOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewOrder', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByShowHints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showHints', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByShowHintsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showHints', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      sortByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.desc);
    });
  }
}

extension UserPreferencesModelQuerySortThenBy
    on QueryBuilder<UserPreferencesModel, UserPreferencesModel, QSortThenBy> {
  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByDailyGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyGoal', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByDailyGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyGoal', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByEnableBreakReminders() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBreakReminders', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByEnableBreakRemindersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBreakReminders', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByEnableNotifications() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableNotifications', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByEnableNotificationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableNotifications', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByEnableSpacedRepetition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableSpacedRepetition', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByEnableSpacedRepetitionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableSpacedRepetition', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByLanguageCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByLanguageCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByMaxNewCardsPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxNewCardsPerDay', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByMaxNewCardsPerDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxNewCardsPerDay', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByMaxReviewsPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxReviewsPerDay', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByMaxReviewsPerDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxReviewsPerDay', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByPlayAudio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playAudio', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByPlayAudioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playAudio', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByPreferredSessionLengthMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferredSessionLengthMinutes', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByPreferredSessionLengthMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferredSessionLengthMinutes', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByReviewOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewOrder', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByReviewOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewOrder', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByShowHints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showHints', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByShowHintsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showHints', Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.asc);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QAfterSortBy>
      thenByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.desc);
    });
  }
}

extension UserPreferencesModelQueryWhereDistinct
    on QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct> {
  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByDailyGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dailyGoal');
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByEnableBreakReminders() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enableBreakReminders');
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByEnableNotifications() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enableNotifications');
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByEnableSpacedRepetition() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enableSpacedRepetition');
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByLanguageCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'languageCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByMaxNewCardsPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxNewCardsPerDay');
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByMaxReviewsPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxReviewsPerDay');
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByPlayAudio() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playAudio');
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByPreferredSessionLengthMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preferredSessionLengthMinutes');
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByReviewOrder({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reviewOrder', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByShowHints() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'showHints');
    });
  }

  QueryBuilder<UserPreferencesModel, UserPreferencesModel, QDistinct>
      distinctByThemeMode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'themeMode', caseSensitive: caseSensitive);
    });
  }
}

extension UserPreferencesModelQueryProperty on QueryBuilder<
    UserPreferencesModel, UserPreferencesModel, QQueryProperty> {
  QueryBuilder<UserPreferencesModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserPreferencesModel, int, QQueryOperations>
      dailyGoalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dailyGoal');
    });
  }

  QueryBuilder<UserPreferencesModel, bool, QQueryOperations>
      enableBreakRemindersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enableBreakReminders');
    });
  }

  QueryBuilder<UserPreferencesModel, bool, QQueryOperations>
      enableNotificationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enableNotifications');
    });
  }

  QueryBuilder<UserPreferencesModel, bool, QQueryOperations>
      enableSpacedRepetitionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enableSpacedRepetition');
    });
  }

  QueryBuilder<UserPreferencesModel, String, QQueryOperations>
      languageCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'languageCode');
    });
  }

  QueryBuilder<UserPreferencesModel, int, QQueryOperations>
      maxNewCardsPerDayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxNewCardsPerDay');
    });
  }

  QueryBuilder<UserPreferencesModel, int, QQueryOperations>
      maxReviewsPerDayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxReviewsPerDay');
    });
  }

  QueryBuilder<UserPreferencesModel, bool, QQueryOperations>
      playAudioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playAudio');
    });
  }

  QueryBuilder<UserPreferencesModel, int, QQueryOperations>
      preferredSessionLengthMinutesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preferredSessionLengthMinutes');
    });
  }

  QueryBuilder<UserPreferencesModel, StudyOrder, QQueryOperations>
      reviewOrderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reviewOrder');
    });
  }

  QueryBuilder<UserPreferencesModel, bool, QQueryOperations>
      showHintsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'showHints');
    });
  }

  QueryBuilder<UserPreferencesModel, String, QQueryOperations>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'themeMode');
    });
  }
}
