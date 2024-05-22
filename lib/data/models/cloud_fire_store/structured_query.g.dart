// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structured_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StructuredQuery _$StructuredQueryFromJson(Map<String, dynamic> json) =>
    StructuredQuery(
      select: Select.fromJson(json['select'] as Map<String, dynamic>),
      from: (json['from'] as List<dynamic>)
          .map((e) => From.fromJson(e as Map<String, dynamic>))
          .toList(),
      where: Where.fromJson(json['where'] as Map<String, dynamic>),
      orderBy: (json['orderBy'] as List<dynamic>)
          .map((e) => OrderBy.fromJson(e as Map<String, dynamic>))
          .toList(),
      startAt: At.fromJson(json['startAt'] as Map<String, dynamic>),
      endAt: At.fromJson(json['endAt'] as Map<String, dynamic>),
      offset: json['offset'] as int,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$StructuredQueryToJson(StructuredQuery instance) =>
    <String, dynamic>{
      'select': instance.select,
      'from': instance.from,
      'where': instance.where,
      'orderBy': instance.orderBy,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'offset': instance.offset,
      'limit': instance.limit,
    };

At _$AtFromJson(Map<String, dynamic> json) => At(
      cursor: Cursor.fromJson(json['Cursor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AtToJson(At instance) => <String, dynamic>{
      'Cursor': instance.cursor,
    };

Cursor _$CursorFromJson(Map<String, dynamic> json) => Cursor(
      cursor: Cursor.fromJson(json['Cursor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CursorToJson(Cursor instance) => <String, dynamic>{
      'Cursor': instance.cursor,
    };

From _$FromFromJson(Map<String, dynamic> json) => From(
      collectionSelector:
          Cursor.fromJson(json['CollectionSelector'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FromToJson(From instance) => <String, dynamic>{
      'CollectionSelector': instance.collectionSelector,
    };

OrderBy _$OrderByFromJson(Map<String, dynamic> json) => OrderBy(
      order: Cursor.fromJson(json['Order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderByToJson(OrderBy instance) => <String, dynamic>{
      'Order': instance.order,
    };

Select _$SelectFromJson(Map<String, dynamic> json) => Select(
      project: Cursor.fromJson(json['project'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelectToJson(Select instance) => <String, dynamic>{
      'project': instance.project,
    };

Where _$WhereFromJson(Map<String, dynamic> json) => Where(
      filter: Cursor.fromJson(json['Filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WhereToJson(Where instance) => <String, dynamic>{
      'Filter': instance.filter,
    };
