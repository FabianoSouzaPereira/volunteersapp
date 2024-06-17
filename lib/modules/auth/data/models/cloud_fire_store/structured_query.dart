/* Reasons for multiple classes
*  1- Strong typing: In Dart, it is preferable to define specific types for each part of the JSON structure 
*  to take advantage of compile-time type checking.
*  2 - Ease of use: With separate classes, it is easier to work with the data, as each class represents a 
*  specific part of the JSON structure and encapsulates the logic related to that part.
*  3 - Maintenance: With a clear structure, code maintenance becomes simpler, especially when JSON changes or grows in complexity.
*  
*  Generating multiple classes is a common practice when working with complex JSON structures. This allows you to handle each part 
*  of the JSON structure in a modular, well-typed way, making your code easier to develop, maintain, and scale.
*/

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'structured_query.g.dart';

StructuredQuery structuredQueryFromJson(String str) => StructuredQuery.fromJson(json.decode(str));

String structuredQueryToJson(StructuredQuery data) => json.encode(data.toJson());

@JsonSerializable()
class StructuredQuery {
  @JsonKey(name: "select")
  final Select select;
  @JsonKey(name: "from")
  final List<From> from;
  @JsonKey(name: "where")
  final Where where;
  @JsonKey(name: "orderBy")
  final List<OrderBy> orderBy;
  @JsonKey(name: "startAt")
  final At startAt;
  @JsonKey(name: "endAt")
  final At endAt;
  @JsonKey(name: "offset")
  final int offset;
  @JsonKey(name: "limit")
  final int limit;

  StructuredQuery({
    required this.select,
    required this.from,
    required this.where,
    required this.orderBy,
    required this.startAt,
    required this.endAt,
    required this.offset,
    required this.limit,
  });

  StructuredQuery copyWith({
    Select? select,
    List<From>? from,
    Where? where,
    List<OrderBy>? orderBy,
    At? startAt,
    At? endAt,
    int? offset,
    int? limit,
  }) =>
      StructuredQuery(
        select: select ?? this.select,
        from: from ?? this.from,
        where: where ?? this.where,
        orderBy: orderBy ?? this.orderBy,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        offset: offset ?? this.offset,
        limit: limit ?? this.limit,
      );

  factory StructuredQuery.fromJson(Map<String, dynamic> json) => _$StructuredQueryFromJson(json);

  Map<String, dynamic> toJson() => _$StructuredQueryToJson(this);
}

@JsonSerializable()
class At {
  @JsonKey(name: "Cursor")
  final Cursor cursor;

  At({
    required this.cursor,
  });

  At copyWith({
    Cursor? cursor,
  }) =>
      At(
        cursor: cursor ?? this.cursor,
      );

  factory At.fromJson(Map<String, dynamic> json) => _$AtFromJson(json);

  Map<String, dynamic> toJson() => _$AtToJson(this);
}

@JsonSerializable()
class Cursor {
  @JsonKey(name: "Cursor")
  final Cursor cursor;

  Cursor({
    required this.cursor,
  });

  Cursor copyWith({
    Cursor? cursor,
  }) =>
      Cursor(
        cursor: cursor ?? this.cursor,
      );

  factory Cursor.fromJson(Map<String, dynamic> json) => _$CursorFromJson(json);

  Map<String, dynamic> toJson() => _$CursorToJson(this);
}

@JsonSerializable()
class From {
  @JsonKey(name: "CollectionSelector")
  final Cursor collectionSelector;

  From({
    required this.collectionSelector,
  });

  From copyWith({
    Cursor? collectionSelector,
  }) =>
      From(
        collectionSelector: collectionSelector ?? this.collectionSelector,
      );

  factory From.fromJson(Map<String, dynamic> json) => _$FromFromJson(json);

  Map<String, dynamic> toJson() => _$FromToJson(this);
}

@JsonSerializable()
class OrderBy {
  @JsonKey(name: "Order")
  final Cursor order;

  OrderBy({
    required this.order,
  });

  OrderBy copyWith({
    Cursor? order,
  }) =>
      OrderBy(
        order: order ?? this.order,
      );

  factory OrderBy.fromJson(Map<String, dynamic> json) => _$OrderByFromJson(json);

  Map<String, dynamic> toJson() => _$OrderByToJson(this);
}

@JsonSerializable()
class Select {
  @JsonKey(name: "project")
  final Cursor project;

  Select({
    required this.project,
  });

  Select copyWith({
    Cursor? project,
  }) =>
      Select(
        project: project ?? this.project,
      );

  factory Select.fromJson(Map<String, dynamic> json) => _$SelectFromJson(json);

  Map<String, dynamic> toJson() => _$SelectToJson(this);
}

@JsonSerializable()
class Where {
  @JsonKey(name: "Filter")
  final Cursor filter;

  Where({
    required this.filter,
  });

  Where copyWith({
    Cursor? filter,
  }) =>
      Where(
        filter: filter ?? this.filter,
      );

  factory Where.fromJson(Map<String, dynamic> json) => _$WhereFromJson(json);

  Map<String, dynamic> toJson() => _$WhereToJson(this);
}
