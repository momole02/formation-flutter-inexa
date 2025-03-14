// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plantation.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlantationCollection on Isar {
  IsarCollection<Plantation> get plantations => this.collection();
}

const PlantationSchema = CollectionSchema(
  name: r'Plantation',
  id: 948143892792963652,
  properties: {
    r'code': PropertySchema(
      id: 0,
      name: r'code',
      type: IsarType.string,
    ),
    r'culture': PropertySchema(
      id: 1,
      name: r'culture',
      type: IsarType.string,
    ),
    r'latitude': PropertySchema(
      id: 2,
      name: r'latitude',
      type: IsarType.double,
    ),
    r'localite': PropertySchema(
      id: 3,
      name: r'localite',
      type: IsarType.string,
    ),
    r'longitude': PropertySchema(
      id: 4,
      name: r'longitude',
      type: IsarType.double,
    ),
    r'photo': PropertySchema(
      id: 5,
      name: r'photo',
      type: IsarType.string,
    ),
    r'superficie': PropertySchema(
      id: 6,
      name: r'superficie',
      type: IsarType.double,
    )
  },
  estimateSize: _plantationEstimateSize,
  serialize: _plantationSerialize,
  deserialize: _plantationDeserialize,
  deserializeProp: _plantationDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _plantationGetId,
  getLinks: _plantationGetLinks,
  attach: _plantationAttach,
  version: '3.1.0+1',
);

int _plantationEstimateSize(
  Plantation object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.code;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.culture;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.localite;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.photo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _plantationSerialize(
  Plantation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.code);
  writer.writeString(offsets[1], object.culture);
  writer.writeDouble(offsets[2], object.latitude);
  writer.writeString(offsets[3], object.localite);
  writer.writeDouble(offsets[4], object.longitude);
  writer.writeString(offsets[5], object.photo);
  writer.writeDouble(offsets[6], object.superficie);
}

Plantation _plantationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Plantation();
  object.code = reader.readStringOrNull(offsets[0]);
  object.culture = reader.readStringOrNull(offsets[1]);
  object.id = id;
  object.latitude = reader.readDoubleOrNull(offsets[2]);
  object.localite = reader.readStringOrNull(offsets[3]);
  object.longitude = reader.readDoubleOrNull(offsets[4]);
  object.photo = reader.readStringOrNull(offsets[5]);
  object.superficie = reader.readDoubleOrNull(offsets[6]);
  return object;
}

P _plantationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _plantationGetId(Plantation object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _plantationGetLinks(Plantation object) {
  return [];
}

void _plantationAttach(IsarCollection<dynamic> col, Id id, Plantation object) {
  object.id = id;
}

extension PlantationQueryWhereSort
    on QueryBuilder<Plantation, Plantation, QWhere> {
  QueryBuilder<Plantation, Plantation, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PlantationQueryWhere
    on QueryBuilder<Plantation, Plantation, QWhereClause> {
  QueryBuilder<Plantation, Plantation, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Plantation, Plantation, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterWhereClause> idBetween(
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

extension PlantationQueryFilter
    on QueryBuilder<Plantation, Plantation, QFilterCondition> {
  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> codeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'code',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> codeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'code',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> codeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> codeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> codeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> codeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> codeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> codeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> codeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> codeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'code',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> codeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> codeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> cultureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'culture',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      cultureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'culture',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> cultureEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'culture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      cultureGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'culture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> cultureLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'culture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> cultureBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'culture',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> cultureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'culture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> cultureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'culture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> cultureContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'culture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> cultureMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'culture',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> cultureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'culture',
        value: '',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      cultureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'culture',
        value: '',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> latitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      latitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> latitudeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      latitudeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> latitudeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> latitudeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> localiteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'localite',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      localiteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'localite',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> localiteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      localiteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> localiteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> localiteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localite',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      localiteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'localite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> localiteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'localite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> localiteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'localite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> localiteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'localite',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      localiteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localite',
        value: '',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      localiteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'localite',
        value: '',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      longitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      longitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> longitudeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      longitudeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> longitudeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> longitudeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> photoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'photo',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> photoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'photo',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> photoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> photoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> photoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> photoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> photoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> photoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> photoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> photoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> photoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo',
        value: '',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      photoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photo',
        value: '',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      superficieIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'superficie',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      superficieIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'superficie',
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> superficieEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'superficie',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      superficieGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'superficie',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition>
      superficieLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'superficie',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterFilterCondition> superficieBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'superficie',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension PlantationQueryObject
    on QueryBuilder<Plantation, Plantation, QFilterCondition> {}

extension PlantationQueryLinks
    on QueryBuilder<Plantation, Plantation, QFilterCondition> {}

extension PlantationQuerySortBy
    on QueryBuilder<Plantation, Plantation, QSortBy> {
  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortByCulture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'culture', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortByCultureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'culture', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortByLocalite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localite', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortByLocaliteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localite', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortByPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortByPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortBySuperficie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'superficie', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> sortBySuperficieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'superficie', Sort.desc);
    });
  }
}

extension PlantationQuerySortThenBy
    on QueryBuilder<Plantation, Plantation, QSortThenBy> {
  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByCulture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'culture', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByCultureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'culture', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByLocalite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localite', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByLocaliteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localite', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenByPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.desc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenBySuperficie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'superficie', Sort.asc);
    });
  }

  QueryBuilder<Plantation, Plantation, QAfterSortBy> thenBySuperficieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'superficie', Sort.desc);
    });
  }
}

extension PlantationQueryWhereDistinct
    on QueryBuilder<Plantation, Plantation, QDistinct> {
  QueryBuilder<Plantation, Plantation, QDistinct> distinctByCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'code', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Plantation, Plantation, QDistinct> distinctByCulture(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'culture', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Plantation, Plantation, QDistinct> distinctByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latitude');
    });
  }

  QueryBuilder<Plantation, Plantation, QDistinct> distinctByLocalite(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localite', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Plantation, Plantation, QDistinct> distinctByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitude');
    });
  }

  QueryBuilder<Plantation, Plantation, QDistinct> distinctByPhoto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Plantation, Plantation, QDistinct> distinctBySuperficie() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'superficie');
    });
  }
}

extension PlantationQueryProperty
    on QueryBuilder<Plantation, Plantation, QQueryProperty> {
  QueryBuilder<Plantation, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Plantation, String?, QQueryOperations> codeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'code');
    });
  }

  QueryBuilder<Plantation, String?, QQueryOperations> cultureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'culture');
    });
  }

  QueryBuilder<Plantation, double?, QQueryOperations> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latitude');
    });
  }

  QueryBuilder<Plantation, String?, QQueryOperations> localiteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localite');
    });
  }

  QueryBuilder<Plantation, double?, QQueryOperations> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitude');
    });
  }

  QueryBuilder<Plantation, String?, QQueryOperations> photoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photo');
    });
  }

  QueryBuilder<Plantation, double?, QQueryOperations> superficieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'superficie');
    });
  }
}
