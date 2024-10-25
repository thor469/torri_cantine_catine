// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_products.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetdbProductsIsarCollection on Isar {
  IsarCollection<dbProductsIsar> get dbProductsIsars => this.collection();
}

const DbProductsIsarSchema = CollectionSchema(
  name: r'dbProductsIsar',
  id: -7706488184892038866,
  properties: {
    r'average_rating': PropertySchema(
      id: 0,
      name: r'average_rating',
      type: IsarType.string,
    ),
    r'bundle_max_size': PropertySchema(
      id: 1,
      name: r'bundle_max_size',
      type: IsarType.long,
    ),
    r'bundle_min_size': PropertySchema(
      id: 2,
      name: r'bundle_min_size',
      type: IsarType.long,
    ),
    r'bundle_stock_quantity': PropertySchema(
      id: 3,
      name: r'bundle_stock_quantity',
      type: IsarType.string,
    ),
    r'bundle_stock_status': PropertySchema(
      id: 4,
      name: r'bundle_stock_status',
      type: IsarType.string,
    ),
    r'bundled_items': PropertySchema(
      id: 5,
      name: r'bundled_items',
      type: IsarType.objectList,
      target: r'BundledItems',
    ),
    r'categories': PropertySchema(
      id: 6,
      name: r'categories',
      type: IsarType.objectList,
      target: r'ProductCategories',
    ),
    r'description': PropertySchema(
      id: 7,
      name: r'description',
      type: IsarType.string,
    ),
    r'featured': PropertySchema(
      id: 8,
      name: r'featured',
      type: IsarType.bool,
    ),
    r'images': PropertySchema(
      id: 9,
      name: r'images',
      type: IsarType.objectList,
      target: r'ImageProduct',
    ),
    r'meta_data': PropertySchema(
      id: 10,
      name: r'meta_data',
      type: IsarType.objectList,
      target: r'MetaData',
    ),
    r'on_sale': PropertySchema(
      id: 11,
      name: r'on_sale',
      type: IsarType.bool,
    ),
    r'price': PropertySchema(
      id: 12,
      name: r'price',
      type: IsarType.string,
    ),
    r'productId': PropertySchema(
      id: 13,
      name: r'productId',
      type: IsarType.long,
    ),
    r'regular_price': PropertySchema(
      id: 14,
      name: r'regular_price',
      type: IsarType.string,
    ),
    r'short_description': PropertySchema(
      id: 15,
      name: r'short_description',
      type: IsarType.string,
    ),
    r'tags': PropertySchema(
      id: 16,
      name: r'tags',
      type: IsarType.objectList,
      target: r'ProductTags',
    ),
    r'title': PropertySchema(
      id: 17,
      name: r'title',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 18,
      name: r'type',
      type: IsarType.string,
    ),
    r'weight': PropertySchema(
      id: 19,
      name: r'weight',
      type: IsarType.string,
    )
  },
  estimateSize: _dbProductsIsarEstimateSize,
  serialize: _dbProductsIsarSerialize,
  deserialize: _dbProductsIsarDeserialize,
  deserializeProp: _dbProductsIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'ImageProduct': ImageProductSchema,
    r'ProductTags': ProductTagsSchema,
    r'MetaData': MetaDataSchema,
    r'ProductCategories': ProductCategoriesSchema,
    r'ImageCategory': ImageCategorySchema,
    r'BundledItems': BundledItemsSchema
  },
  getId: _dbProductsIsarGetId,
  getLinks: _dbProductsIsarGetLinks,
  attach: _dbProductsIsarAttach,
  version: '3.1.0',
);

int _dbProductsIsarEstimateSize(
  dbProductsIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.average_rating;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.bundle_stock_quantity;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.bundle_stock_status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.bundled_items;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[BundledItems]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              BundledItemsSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.categories;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ProductCategories]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              ProductCategoriesSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.images;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ImageProduct]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              ImageProductSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.meta_data;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[MetaData]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += MetaDataSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.price;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.regular_price;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.short_description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.tags;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ProductTags]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              ProductTagsSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.weight;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _dbProductsIsarSerialize(
  dbProductsIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.average_rating);
  writer.writeLong(offsets[1], object.bundle_max_size);
  writer.writeLong(offsets[2], object.bundle_min_size);
  writer.writeString(offsets[3], object.bundle_stock_quantity);
  writer.writeString(offsets[4], object.bundle_stock_status);
  writer.writeObjectList<BundledItems>(
    offsets[5],
    allOffsets,
    BundledItemsSchema.serialize,
    object.bundled_items,
  );
  writer.writeObjectList<ProductCategories>(
    offsets[6],
    allOffsets,
    ProductCategoriesSchema.serialize,
    object.categories,
  );
  writer.writeString(offsets[7], object.description);
  writer.writeBool(offsets[8], object.featured);
  writer.writeObjectList<ImageProduct>(
    offsets[9],
    allOffsets,
    ImageProductSchema.serialize,
    object.images,
  );
  writer.writeObjectList<MetaData>(
    offsets[10],
    allOffsets,
    MetaDataSchema.serialize,
    object.meta_data,
  );
  writer.writeBool(offsets[11], object.on_sale);
  writer.writeString(offsets[12], object.price);
  writer.writeLong(offsets[13], object.productId);
  writer.writeString(offsets[14], object.regular_price);
  writer.writeString(offsets[15], object.short_description);
  writer.writeObjectList<ProductTags>(
    offsets[16],
    allOffsets,
    ProductTagsSchema.serialize,
    object.tags,
  );
  writer.writeString(offsets[17], object.title);
  writer.writeString(offsets[18], object.type);
  writer.writeString(offsets[19], object.weight);
}

dbProductsIsar _dbProductsIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = dbProductsIsar();
  object.average_rating = reader.readStringOrNull(offsets[0]);
  object.bundle_max_size = reader.readLongOrNull(offsets[1]);
  object.bundle_min_size = reader.readLongOrNull(offsets[2]);
  object.bundle_stock_quantity = reader.readStringOrNull(offsets[3]);
  object.bundle_stock_status = reader.readStringOrNull(offsets[4]);
  object.bundled_items = reader.readObjectList<BundledItems>(
    offsets[5],
    BundledItemsSchema.deserialize,
    allOffsets,
    BundledItems(),
  );
  object.categories = reader.readObjectList<ProductCategories>(
    offsets[6],
    ProductCategoriesSchema.deserialize,
    allOffsets,
    ProductCategories(),
  );
  object.description = reader.readStringOrNull(offsets[7]);
  object.featured = reader.readBoolOrNull(offsets[8]);
  object.id = id;
  object.images = reader.readObjectList<ImageProduct>(
    offsets[9],
    ImageProductSchema.deserialize,
    allOffsets,
    ImageProduct(),
  );
  object.meta_data = reader.readObjectList<MetaData>(
    offsets[10],
    MetaDataSchema.deserialize,
    allOffsets,
    MetaData(),
  );
  object.on_sale = reader.readBoolOrNull(offsets[11]);
  object.price = reader.readStringOrNull(offsets[12]);
  object.productId = reader.readLongOrNull(offsets[13]);
  object.regular_price = reader.readStringOrNull(offsets[14]);
  object.short_description = reader.readStringOrNull(offsets[15]);
  object.tags = reader.readObjectList<ProductTags>(
    offsets[16],
    ProductTagsSchema.deserialize,
    allOffsets,
    ProductTags(),
  );
  object.title = reader.readStringOrNull(offsets[17]);
  object.type = reader.readStringOrNull(offsets[18]);
  object.weight = reader.readStringOrNull(offsets[19]);
  return object;
}

P _dbProductsIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readObjectList<BundledItems>(
        offset,
        BundledItemsSchema.deserialize,
        allOffsets,
        BundledItems(),
      )) as P;
    case 6:
      return (reader.readObjectList<ProductCategories>(
        offset,
        ProductCategoriesSchema.deserialize,
        allOffsets,
        ProductCategories(),
      )) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readObjectList<ImageProduct>(
        offset,
        ImageProductSchema.deserialize,
        allOffsets,
        ImageProduct(),
      )) as P;
    case 10:
      return (reader.readObjectList<MetaData>(
        offset,
        MetaDataSchema.deserialize,
        allOffsets,
        MetaData(),
      )) as P;
    case 11:
      return (reader.readBoolOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readObjectList<ProductTags>(
        offset,
        ProductTagsSchema.deserialize,
        allOffsets,
        ProductTags(),
      )) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dbProductsIsarGetId(dbProductsIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dbProductsIsarGetLinks(dbProductsIsar object) {
  return [];
}

void _dbProductsIsarAttach(
    IsarCollection<dynamic> col, Id id, dbProductsIsar object) {
  object.id = id;
}

extension dbProductsIsarQueryWhereSort
    on QueryBuilder<dbProductsIsar, dbProductsIsar, QWhere> {
  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension dbProductsIsarQueryWhere
    on QueryBuilder<dbProductsIsar, dbProductsIsar, QWhereClause> {
  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterWhereClause> idBetween(
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

extension dbProductsIsarQueryFilter
    on QueryBuilder<dbProductsIsar, dbProductsIsar, QFilterCondition> {
  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      average_ratingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'average_rating',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      average_ratingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'average_rating',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      average_ratingEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'average_rating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      average_ratingGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'average_rating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      average_ratingLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'average_rating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      average_ratingBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'average_rating',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      average_ratingStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'average_rating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      average_ratingEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'average_rating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      average_ratingContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'average_rating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      average_ratingMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'average_rating',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      average_ratingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'average_rating',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      average_ratingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'average_rating',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_max_sizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bundle_max_size',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_max_sizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bundle_max_size',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_max_sizeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bundle_max_size',
        value: value,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_max_sizeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bundle_max_size',
        value: value,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_max_sizeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bundle_max_size',
        value: value,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_max_sizeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bundle_max_size',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_min_sizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bundle_min_size',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_min_sizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bundle_min_size',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_min_sizeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bundle_min_size',
        value: value,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_min_sizeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bundle_min_size',
        value: value,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_min_sizeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bundle_min_size',
        value: value,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_min_sizeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bundle_min_size',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_quantityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bundle_stock_quantity',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_quantityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bundle_stock_quantity',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_quantityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bundle_stock_quantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_quantityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bundle_stock_quantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_quantityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bundle_stock_quantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_quantityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bundle_stock_quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_quantityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bundle_stock_quantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_quantityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bundle_stock_quantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_quantityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bundle_stock_quantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_quantityMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bundle_stock_quantity',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_quantityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bundle_stock_quantity',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_quantityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bundle_stock_quantity',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bundle_stock_status',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bundle_stock_status',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_statusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bundle_stock_status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_statusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bundle_stock_status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_statusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bundle_stock_status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_statusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bundle_stock_status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bundle_stock_status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bundle_stock_status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bundle_stock_status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bundle_stock_status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bundle_stock_status',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundle_stock_statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bundle_stock_status',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundled_itemsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bundled_items',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundled_itemsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bundled_items',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundled_itemsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bundled_items',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundled_itemsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bundled_items',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundled_itemsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bundled_items',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundled_itemsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bundled_items',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundled_itemsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bundled_items',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundled_itemsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bundled_items',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      categoriesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categories',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      categoriesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categories',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      categoriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      categoriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      categoriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      categoriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      categoriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      categoriesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
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

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
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

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
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

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
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

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      descriptionEndsWith(
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

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      featuredIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'featured',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      featuredIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'featured',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      featuredEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'featured',
        value: value,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
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

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
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

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      imagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'images',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      imagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'images',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      imagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      imagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      imagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      imagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      imagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      imagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      meta_dataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'meta_data',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      meta_dataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'meta_data',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      meta_dataLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meta_data',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      meta_dataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meta_data',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      meta_dataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meta_data',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      meta_dataLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meta_data',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      meta_dataLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meta_data',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      meta_dataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meta_data',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      on_saleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'on_sale',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      on_saleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'on_sale',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      on_saleEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'on_sale',
        value: value,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      priceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'price',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      priceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'price',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      priceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      priceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      priceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      priceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      priceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      priceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      priceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      priceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'price',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      priceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      priceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'price',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      productIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      productIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      productIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      productIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      productIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      productIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      regular_priceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'regular_price',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      regular_priceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'regular_price',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      regular_priceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regular_price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      regular_priceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'regular_price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      regular_priceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'regular_price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      regular_priceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'regular_price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      regular_priceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'regular_price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      regular_priceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'regular_price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      regular_priceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'regular_price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      regular_priceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'regular_price',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      regular_priceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regular_price',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      regular_priceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'regular_price',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      short_descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'short_description',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      short_descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'short_description',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      short_descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'short_description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      short_descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'short_description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      short_descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'short_description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      short_descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'short_description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      short_descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'short_description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      short_descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'short_description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      short_descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'short_description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      short_descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'short_description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      short_descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'short_description',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      short_descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'short_description',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      tagsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tags',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      tagsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tags',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      tagsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      weightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weight',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      weightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weight',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      weightEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      weightGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      weightLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      weightBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      weightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      weightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      weightContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      weightMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      weightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weight',
        value: '',
      ));
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      weightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weight',
        value: '',
      ));
    });
  }
}

extension dbProductsIsarQueryObject
    on QueryBuilder<dbProductsIsar, dbProductsIsar, QFilterCondition> {
  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      bundled_itemsElement(FilterQuery<BundledItems> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'bundled_items');
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      categoriesElement(FilterQuery<ProductCategories> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'categories');
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      imagesElement(FilterQuery<ImageProduct> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'images');
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      meta_dataElement(FilterQuery<MetaData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'meta_data');
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterFilterCondition>
      tagsElement(FilterQuery<ProductTags> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'tags');
    });
  }
}

extension dbProductsIsarQueryLinks
    on QueryBuilder<dbProductsIsar, dbProductsIsar, QFilterCondition> {}

extension dbProductsIsarQuerySortBy
    on QueryBuilder<dbProductsIsar, dbProductsIsar, QSortBy> {
  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByAverage_rating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'average_rating', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByAverage_ratingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'average_rating', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByBundle_max_size() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_max_size', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByBundle_max_sizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_max_size', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByBundle_min_size() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_min_size', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByBundle_min_sizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_min_size', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByBundle_stock_quantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_stock_quantity', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByBundle_stock_quantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_stock_quantity', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByBundle_stock_status() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_stock_status', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByBundle_stock_statusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_stock_status', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> sortByFeatured() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'featured', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByFeaturedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'featured', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> sortByOn_sale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'on_sale', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByOn_saleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'on_sale', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByRegular_price() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regular_price', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByRegular_priceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regular_price', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByShort_description() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'short_description', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByShort_descriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'short_description', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> sortByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      sortByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension dbProductsIsarQuerySortThenBy
    on QueryBuilder<dbProductsIsar, dbProductsIsar, QSortThenBy> {
  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByAverage_rating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'average_rating', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByAverage_ratingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'average_rating', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByBundle_max_size() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_max_size', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByBundle_max_sizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_max_size', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByBundle_min_size() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_min_size', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByBundle_min_sizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_min_size', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByBundle_stock_quantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_stock_quantity', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByBundle_stock_quantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_stock_quantity', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByBundle_stock_status() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_stock_status', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByBundle_stock_statusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bundle_stock_status', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> thenByFeatured() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'featured', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByFeaturedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'featured', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> thenByOn_sale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'on_sale', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByOn_saleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'on_sale', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByRegular_price() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regular_price', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByRegular_priceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regular_price', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByShort_description() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'short_description', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByShort_descriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'short_description', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy> thenByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QAfterSortBy>
      thenByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension dbProductsIsarQueryWhereDistinct
    on QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct> {
  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct>
      distinctByAverage_rating({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'average_rating',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct>
      distinctByBundle_max_size() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bundle_max_size');
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct>
      distinctByBundle_min_size() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bundle_min_size');
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct>
      distinctByBundle_stock_quantity({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bundle_stock_quantity',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct>
      distinctByBundle_stock_status({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bundle_stock_status',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct> distinctByFeatured() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'featured');
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct> distinctByOn_sale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'on_sale');
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct> distinctByPrice(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct>
      distinctByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId');
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct>
      distinctByRegular_price({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'regular_price',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct>
      distinctByShort_description({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'short_description',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<dbProductsIsar, dbProductsIsar, QDistinct> distinctByWeight(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weight', caseSensitive: caseSensitive);
    });
  }
}

extension dbProductsIsarQueryProperty
    on QueryBuilder<dbProductsIsar, dbProductsIsar, QQueryProperty> {
  QueryBuilder<dbProductsIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<dbProductsIsar, String?, QQueryOperations>
      average_ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'average_rating');
    });
  }

  QueryBuilder<dbProductsIsar, int?, QQueryOperations>
      bundle_max_sizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bundle_max_size');
    });
  }

  QueryBuilder<dbProductsIsar, int?, QQueryOperations>
      bundle_min_sizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bundle_min_size');
    });
  }

  QueryBuilder<dbProductsIsar, String?, QQueryOperations>
      bundle_stock_quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bundle_stock_quantity');
    });
  }

  QueryBuilder<dbProductsIsar, String?, QQueryOperations>
      bundle_stock_statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bundle_stock_status');
    });
  }

  QueryBuilder<dbProductsIsar, List<BundledItems>?, QQueryOperations>
      bundled_itemsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bundled_items');
    });
  }

  QueryBuilder<dbProductsIsar, List<ProductCategories>?, QQueryOperations>
      categoriesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categories');
    });
  }

  QueryBuilder<dbProductsIsar, String?, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<dbProductsIsar, bool?, QQueryOperations> featuredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'featured');
    });
  }

  QueryBuilder<dbProductsIsar, List<ImageProduct>?, QQueryOperations>
      imagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'images');
    });
  }

  QueryBuilder<dbProductsIsar, List<MetaData>?, QQueryOperations>
      meta_dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meta_data');
    });
  }

  QueryBuilder<dbProductsIsar, bool?, QQueryOperations> on_saleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'on_sale');
    });
  }

  QueryBuilder<dbProductsIsar, String?, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<dbProductsIsar, int?, QQueryOperations> productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }

  QueryBuilder<dbProductsIsar, String?, QQueryOperations>
      regular_priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'regular_price');
    });
  }

  QueryBuilder<dbProductsIsar, String?, QQueryOperations>
      short_descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'short_description');
    });
  }

  QueryBuilder<dbProductsIsar, List<ProductTags>?, QQueryOperations>
      tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tags');
    });
  }

  QueryBuilder<dbProductsIsar, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<dbProductsIsar, String?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<dbProductsIsar, String?, QQueryOperations> weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weight');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ImageProductSchema = Schema(
  name: r'ImageProduct',
  id: 951326502921243659,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'src': PropertySchema(
      id: 1,
      name: r'src',
      type: IsarType.string,
    )
  },
  estimateSize: _imageProductEstimateSize,
  serialize: _imageProductSerialize,
  deserialize: _imageProductDeserialize,
  deserializeProp: _imageProductDeserializeProp,
);

int _imageProductEstimateSize(
  ImageProduct object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.src;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _imageProductSerialize(
  ImageProduct object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeString(offsets[1], object.src);
}

ImageProduct _imageProductDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ImageProduct();
  object.id = reader.readLongOrNull(offsets[0]);
  object.src = reader.readStringOrNull(offsets[1]);
  return object;
}

P _imageProductDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ImageProductQueryFilter
    on QueryBuilder<ImageProduct, ImageProduct, QFilterCondition> {
  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> idGreaterThan(
    int? value, {
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

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> idLessThan(
    int? value, {
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

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> srcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'src',
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition>
      srcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'src',
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> srcEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'src',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition>
      srcGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'src',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> srcLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'src',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> srcBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'src',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> srcStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'src',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> srcEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'src',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> srcContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'src',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> srcMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'src',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition> srcIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'src',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageProduct, ImageProduct, QAfterFilterCondition>
      srcIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'src',
        value: '',
      ));
    });
  }
}

extension ImageProductQueryObject
    on QueryBuilder<ImageProduct, ImageProduct, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ProductTagsSchema = Schema(
  name: r'ProductTags',
  id: -7279918140150740180,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'slug': PropertySchema(
      id: 2,
      name: r'slug',
      type: IsarType.string,
    )
  },
  estimateSize: _productTagsEstimateSize,
  serialize: _productTagsSerialize,
  deserialize: _productTagsDeserialize,
  deserializeProp: _productTagsDeserializeProp,
);

int _productTagsEstimateSize(
  ProductTags object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.slug;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _productTagsSerialize(
  ProductTags object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeString(offsets[1], object.name);
  writer.writeString(offsets[2], object.slug);
}

ProductTags _productTagsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductTags();
  object.id = reader.readLongOrNull(offsets[0]);
  object.name = reader.readStringOrNull(offsets[1]);
  object.slug = reader.readStringOrNull(offsets[2]);
  return object;
}

P _productTagsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ProductTagsQueryFilter
    on QueryBuilder<ProductTags, ProductTags, QFilterCondition> {
  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> idGreaterThan(
    int? value, {
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

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> idLessThan(
    int? value, {
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

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> nameEqualTo(
    String? value, {
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

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> nameGreaterThan(
    String? value, {
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

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> nameLessThan(
    String? value, {
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

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> nameContains(
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

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> slugIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'slug',
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition>
      slugIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'slug',
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> slugEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> slugGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> slugLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> slugBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slug',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> slugStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> slugEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> slugContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> slugMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slug',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition> slugIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slug',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductTags, ProductTags, QAfterFilterCondition>
      slugIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slug',
        value: '',
      ));
    });
  }
}

extension ProductTagsQueryObject
    on QueryBuilder<ProductTags, ProductTags, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ProductCategoriesSchema = Schema(
  name: r'ProductCategories',
  id: -891467165484724003,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'image': PropertySchema(
      id: 1,
      name: r'image',
      type: IsarType.object,
      target: r'ImageCategory',
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'slug': PropertySchema(
      id: 3,
      name: r'slug',
      type: IsarType.string,
    )
  },
  estimateSize: _productCategoriesEstimateSize,
  serialize: _productCategoriesSerialize,
  deserialize: _productCategoriesDeserialize,
  deserializeProp: _productCategoriesDeserializeProp,
);

int _productCategoriesEstimateSize(
  ProductCategories object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 +
          ImageCategorySchema.estimateSize(
              value, allOffsets[ImageCategory]!, allOffsets);
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.slug;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _productCategoriesSerialize(
  ProductCategories object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeObject<ImageCategory>(
    offsets[1],
    allOffsets,
    ImageCategorySchema.serialize,
    object.image,
  );
  writer.writeString(offsets[2], object.name);
  writer.writeString(offsets[3], object.slug);
}

ProductCategories _productCategoriesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductCategories();
  object.id = reader.readLongOrNull(offsets[0]);
  object.image = reader.readObjectOrNull<ImageCategory>(
    offsets[1],
    ImageCategorySchema.deserialize,
    allOffsets,
  );
  object.name = reader.readStringOrNull(offsets[2]);
  object.slug = reader.readStringOrNull(offsets[3]);
  return object;
}

P _productCategoriesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<ImageCategory>(
        offset,
        ImageCategorySchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ProductCategoriesQueryFilter
    on QueryBuilder<ProductCategories, ProductCategories, QFilterCondition> {
  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      idGreaterThan(
    int? value, {
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

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      idLessThan(
    int? value, {
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

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
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

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
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

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      nameLessThan(
    String? value, {
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

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      slugIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'slug',
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      slugIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'slug',
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      slugEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      slugGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      slugLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      slugBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slug',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      slugStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      slugEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      slugContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      slugMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slug',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      slugIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slug',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      slugIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slug',
        value: '',
      ));
    });
  }
}

extension ProductCategoriesQueryObject
    on QueryBuilder<ProductCategories, ProductCategories, QFilterCondition> {
  QueryBuilder<ProductCategories, ProductCategories, QAfterFilterCondition>
      image(FilterQuery<ImageCategory> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'image');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ImageCategorySchema = Schema(
  name: r'ImageCategory',
  id: -8763028922494145549,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'src': PropertySchema(
      id: 1,
      name: r'src',
      type: IsarType.string,
    )
  },
  estimateSize: _imageCategoryEstimateSize,
  serialize: _imageCategorySerialize,
  deserialize: _imageCategoryDeserialize,
  deserializeProp: _imageCategoryDeserializeProp,
);

int _imageCategoryEstimateSize(
  ImageCategory object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.src;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _imageCategorySerialize(
  ImageCategory object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeString(offsets[1], object.src);
}

ImageCategory _imageCategoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ImageCategory();
  object.id = reader.readLongOrNull(offsets[0]);
  object.src = reader.readStringOrNull(offsets[1]);
  return object;
}

P _imageCategoryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ImageCategoryQueryFilter
    on QueryBuilder<ImageCategory, ImageCategory, QFilterCondition> {
  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition>
      idGreaterThan(
    int? value, {
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

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition> idLessThan(
    int? value, {
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

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition>
      srcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'src',
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition>
      srcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'src',
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition> srcEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'src',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition>
      srcGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'src',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition> srcLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'src',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition> srcBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'src',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition>
      srcStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'src',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition> srcEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'src',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition> srcContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'src',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition> srcMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'src',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition>
      srcIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'src',
        value: '',
      ));
    });
  }

  QueryBuilder<ImageCategory, ImageCategory, QAfterFilterCondition>
      srcIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'src',
        value: '',
      ));
    });
  }
}

extension ImageCategoryQueryObject
    on QueryBuilder<ImageCategory, ImageCategory, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MetaDataSchema = Schema(
  name: r'MetaData',
  id: -267417460314953356,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'key': PropertySchema(
      id: 1,
      name: r'key',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 2,
      name: r'value',
      type: IsarType.string,
    )
  },
  estimateSize: _metaDataEstimateSize,
  serialize: _metaDataSerialize,
  deserialize: _metaDataDeserialize,
  deserializeProp: _metaDataDeserializeProp,
);

int _metaDataEstimateSize(
  MetaData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.key;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.value;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _metaDataSerialize(
  MetaData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeString(offsets[1], object.key);
  writer.writeString(offsets[2], object.value);
}

MetaData _metaDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MetaData();
  object.id = reader.readLongOrNull(offsets[0]);
  object.key = reader.readStringOrNull(offsets[1]);
  object.value = reader.readStringOrNull(offsets[2]);
  return object;
}

P _metaDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MetaDataQueryFilter
    on QueryBuilder<MetaData, MetaData, QFilterCondition> {
  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> idGreaterThan(
    int? value, {
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

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> idLessThan(
    int? value, {
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

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> keyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'key',
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> keyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'key',
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> keyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> keyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> keyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> keyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> keyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> keyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> valueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> valueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> valueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> valueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> valueContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> valueMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'value',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<MetaData, MetaData, QAfterFilterCondition> valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'value',
        value: '',
      ));
    });
  }
}

extension MetaDataQueryObject
    on QueryBuilder<MetaData, MetaData, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const BundledItemsSchema = Schema(
  name: r'BundledItems',
  id: 3974958753794735605,
  properties: {
    r'bundled_item_id': PropertySchema(
      id: 0,
      name: r'bundled_item_id',
      type: IsarType.long,
    ),
    r'cart_price_visibility': PropertySchema(
      id: 1,
      name: r'cart_price_visibility',
      type: IsarType.string,
    ),
    r'cart_visibility': PropertySchema(
      id: 2,
      name: r'cart_visibility',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'discount': PropertySchema(
      id: 4,
      name: r'discount',
      type: IsarType.string,
    ),
    r'hide_thumbnail': PropertySchema(
      id: 5,
      name: r'hide_thumbnail',
      type: IsarType.bool,
    ),
    r'menu_order': PropertySchema(
      id: 6,
      name: r'menu_order',
      type: IsarType.long,
    ),
    r'optional': PropertySchema(
      id: 7,
      name: r'optional',
      type: IsarType.bool,
    ),
    r'order_price_visibility': PropertySchema(
      id: 8,
      name: r'order_price_visibility',
      type: IsarType.string,
    ),
    r'order_visibility': PropertySchema(
      id: 9,
      name: r'order_visibility',
      type: IsarType.string,
    ),
    r'override_default_variation_attributes': PropertySchema(
      id: 10,
      name: r'override_default_variation_attributes',
      type: IsarType.bool,
    ),
    r'override_description': PropertySchema(
      id: 11,
      name: r'override_description',
      type: IsarType.bool,
    ),
    r'override_title': PropertySchema(
      id: 12,
      name: r'override_title',
      type: IsarType.bool,
    ),
    r'override_variations': PropertySchema(
      id: 13,
      name: r'override_variations',
      type: IsarType.bool,
    ),
    r'priced_individually': PropertySchema(
      id: 14,
      name: r'priced_individually',
      type: IsarType.bool,
    ),
    r'product_id': PropertySchema(
      id: 15,
      name: r'product_id',
      type: IsarType.long,
    ),
    r'quantity_default': PropertySchema(
      id: 16,
      name: r'quantity_default',
      type: IsarType.long,
    ),
    r'quantity_max': PropertySchema(
      id: 17,
      name: r'quantity_max',
      type: IsarType.long,
    ),
    r'quantity_min': PropertySchema(
      id: 18,
      name: r'quantity_min',
      type: IsarType.long,
    ),
    r'shipped_individually': PropertySchema(
      id: 19,
      name: r'shipped_individually',
      type: IsarType.bool,
    ),
    r'single_product_price_visibility': PropertySchema(
      id: 20,
      name: r'single_product_price_visibility',
      type: IsarType.string,
    ),
    r'single_product_visibility': PropertySchema(
      id: 21,
      name: r'single_product_visibility',
      type: IsarType.string,
    ),
    r'stock_status': PropertySchema(
      id: 22,
      name: r'stock_status',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 23,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _bundledItemsEstimateSize,
  serialize: _bundledItemsSerialize,
  deserialize: _bundledItemsDeserialize,
  deserializeProp: _bundledItemsDeserializeProp,
);

int _bundledItemsEstimateSize(
  BundledItems object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cart_price_visibility;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cart_visibility;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.discount;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.order_price_visibility;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.order_visibility;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.single_product_price_visibility;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.single_product_visibility;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.stock_status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _bundledItemsSerialize(
  BundledItems object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bundled_item_id);
  writer.writeString(offsets[1], object.cart_price_visibility);
  writer.writeString(offsets[2], object.cart_visibility);
  writer.writeString(offsets[3], object.description);
  writer.writeString(offsets[4], object.discount);
  writer.writeBool(offsets[5], object.hide_thumbnail);
  writer.writeLong(offsets[6], object.menu_order);
  writer.writeBool(offsets[7], object.optional);
  writer.writeString(offsets[8], object.order_price_visibility);
  writer.writeString(offsets[9], object.order_visibility);
  writer.writeBool(offsets[10], object.override_default_variation_attributes);
  writer.writeBool(offsets[11], object.override_description);
  writer.writeBool(offsets[12], object.override_title);
  writer.writeBool(offsets[13], object.override_variations);
  writer.writeBool(offsets[14], object.priced_individually);
  writer.writeLong(offsets[15], object.product_id);
  writer.writeLong(offsets[16], object.quantity_default);
  writer.writeLong(offsets[17], object.quantity_max);
  writer.writeLong(offsets[18], object.quantity_min);
  writer.writeBool(offsets[19], object.shipped_individually);
  writer.writeString(offsets[20], object.single_product_price_visibility);
  writer.writeString(offsets[21], object.single_product_visibility);
  writer.writeString(offsets[22], object.stock_status);
  writer.writeString(offsets[23], object.title);
}

BundledItems _bundledItemsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BundledItems();
  object.bundled_item_id = reader.readLongOrNull(offsets[0]);
  object.cart_price_visibility = reader.readStringOrNull(offsets[1]);
  object.cart_visibility = reader.readStringOrNull(offsets[2]);
  object.description = reader.readStringOrNull(offsets[3]);
  object.discount = reader.readStringOrNull(offsets[4]);
  object.hide_thumbnail = reader.readBoolOrNull(offsets[5]);
  object.menu_order = reader.readLongOrNull(offsets[6]);
  object.optional = reader.readBoolOrNull(offsets[7]);
  object.order_price_visibility = reader.readStringOrNull(offsets[8]);
  object.order_visibility = reader.readStringOrNull(offsets[9]);
  object.override_default_variation_attributes =
      reader.readBoolOrNull(offsets[10]);
  object.override_description = reader.readBoolOrNull(offsets[11]);
  object.override_title = reader.readBoolOrNull(offsets[12]);
  object.override_variations = reader.readBoolOrNull(offsets[13]);
  object.priced_individually = reader.readBoolOrNull(offsets[14]);
  object.product_id = reader.readLongOrNull(offsets[15]);
  object.quantity_default = reader.readLongOrNull(offsets[16]);
  object.quantity_max = reader.readLongOrNull(offsets[17]);
  object.quantity_min = reader.readLongOrNull(offsets[18]);
  object.shipped_individually = reader.readBoolOrNull(offsets[19]);
  object.single_product_price_visibility = reader.readStringOrNull(offsets[20]);
  object.single_product_visibility = reader.readStringOrNull(offsets[21]);
  object.stock_status = reader.readStringOrNull(offsets[22]);
  object.title = reader.readStringOrNull(offsets[23]);
  return object;
}

P _bundledItemsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readBoolOrNull(offset)) as P;
    case 11:
      return (reader.readBoolOrNull(offset)) as P;
    case 12:
      return (reader.readBoolOrNull(offset)) as P;
    case 13:
      return (reader.readBoolOrNull(offset)) as P;
    case 14:
      return (reader.readBoolOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readLongOrNull(offset)) as P;
    case 17:
      return (reader.readLongOrNull(offset)) as P;
    case 18:
      return (reader.readLongOrNull(offset)) as P;
    case 19:
      return (reader.readBoolOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension BundledItemsQueryFilter
    on QueryBuilder<BundledItems, BundledItems, QFilterCondition> {
  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      bundled_item_idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bundled_item_id',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      bundled_item_idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bundled_item_id',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      bundled_item_idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bundled_item_id',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      bundled_item_idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bundled_item_id',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      bundled_item_idLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bundled_item_id',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      bundled_item_idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bundled_item_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_price_visibilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cart_price_visibility',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_price_visibilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cart_price_visibility',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_price_visibilityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cart_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_price_visibilityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cart_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_price_visibilityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cart_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_price_visibilityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cart_price_visibility',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_price_visibilityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cart_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_price_visibilityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cart_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_price_visibilityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cart_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_price_visibilityMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cart_price_visibility',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_price_visibilityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cart_price_visibility',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_price_visibilityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cart_price_visibility',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_visibilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cart_visibility',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_visibilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cart_visibility',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_visibilityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cart_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_visibilityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cart_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_visibilityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cart_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_visibilityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cart_visibility',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_visibilityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cart_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_visibilityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cart_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_visibilityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cart_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_visibilityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cart_visibility',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_visibilityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cart_visibility',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      cart_visibilityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cart_visibility',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
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

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
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

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
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

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
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

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      descriptionEndsWith(
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

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      discountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'discount',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      discountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'discount',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      discountEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      discountGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      discountLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      discountBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      discountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'discount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      discountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'discount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      discountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'discount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      discountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'discount',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      discountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discount',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      discountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'discount',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      hide_thumbnailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hide_thumbnail',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      hide_thumbnailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hide_thumbnail',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      hide_thumbnailEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hide_thumbnail',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      menu_orderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'menu_order',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      menu_orderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'menu_order',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      menu_orderEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'menu_order',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      menu_orderGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'menu_order',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      menu_orderLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'menu_order',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      menu_orderBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'menu_order',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      optionalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'optional',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      optionalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'optional',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      optionalEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'optional',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_price_visibilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'order_price_visibility',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_price_visibilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'order_price_visibility',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_price_visibilityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'order_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_price_visibilityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'order_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_price_visibilityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'order_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_price_visibilityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'order_price_visibility',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_price_visibilityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'order_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_price_visibilityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'order_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_price_visibilityContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'order_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_price_visibilityMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'order_price_visibility',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_price_visibilityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'order_price_visibility',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_price_visibilityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'order_price_visibility',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_visibilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'order_visibility',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_visibilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'order_visibility',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_visibilityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'order_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_visibilityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'order_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_visibilityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'order_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_visibilityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'order_visibility',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_visibilityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'order_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_visibilityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'order_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_visibilityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'order_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_visibilityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'order_visibility',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_visibilityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'order_visibility',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      order_visibilityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'order_visibility',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      override_default_variation_attributesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'override_default_variation_attributes',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      override_default_variation_attributesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'override_default_variation_attributes',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      override_default_variation_attributesEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'override_default_variation_attributes',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      override_descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'override_description',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      override_descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'override_description',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      override_descriptionEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'override_description',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      override_titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'override_title',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      override_titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'override_title',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      override_titleEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'override_title',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      override_variationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'override_variations',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      override_variationsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'override_variations',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      override_variationsEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'override_variations',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      priced_individuallyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priced_individually',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      priced_individuallyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priced_individually',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      priced_individuallyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priced_individually',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      product_idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'product_id',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      product_idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'product_id',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      product_idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'product_id',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      product_idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'product_id',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      product_idLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'product_id',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      product_idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'product_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_defaultIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantity_default',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_defaultIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantity_default',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_defaultEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity_default',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_defaultGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity_default',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_defaultLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity_default',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_defaultBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity_default',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_maxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantity_max',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_maxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantity_max',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_maxEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity_max',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_maxGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity_max',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_maxLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity_max',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_maxBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity_max',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_minIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantity_min',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_minIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantity_min',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_minEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity_min',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_minGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity_min',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_minLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity_min',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      quantity_minBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity_min',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      shipped_individuallyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shipped_individually',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      shipped_individuallyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shipped_individually',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      shipped_individuallyEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shipped_individually',
        value: value,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_price_visibilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'single_product_price_visibility',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_price_visibilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'single_product_price_visibility',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_price_visibilityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'single_product_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_price_visibilityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'single_product_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_price_visibilityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'single_product_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_price_visibilityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'single_product_price_visibility',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_price_visibilityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'single_product_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_price_visibilityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'single_product_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_price_visibilityContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'single_product_price_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_price_visibilityMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'single_product_price_visibility',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_price_visibilityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'single_product_price_visibility',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_price_visibilityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'single_product_price_visibility',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_visibilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'single_product_visibility',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_visibilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'single_product_visibility',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_visibilityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'single_product_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_visibilityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'single_product_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_visibilityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'single_product_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_visibilityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'single_product_visibility',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_visibilityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'single_product_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_visibilityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'single_product_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_visibilityContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'single_product_visibility',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_visibilityMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'single_product_visibility',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_visibilityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'single_product_visibility',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      single_product_visibilityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'single_product_visibility',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      stock_statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stock_status',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      stock_statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stock_status',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      stock_statusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stock_status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      stock_statusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stock_status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      stock_statusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stock_status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      stock_statusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stock_status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      stock_statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stock_status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      stock_statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stock_status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      stock_statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stock_status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      stock_statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stock_status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      stock_statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stock_status',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      stock_statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stock_status',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<BundledItems, BundledItems, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension BundledItemsQueryObject
    on QueryBuilder<BundledItems, BundledItems, QFilterCondition> {}
