// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListingModel _$$_ListingModelFromJson(Map<String, dynamic> json) =>
    _$_ListingModel(
      kind: json['kind'] as String?,
      data: json['data'] == null
          ? null
          : ListingData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ListingModelToJson(_$_ListingModel instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'data': instance.data,
    };

_$_ListingData _$$_ListingDataFromJson(Map<String, dynamic> json) =>
    _$_ListingData(
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => ListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListingDataToJson(_$_ListingData instance) =>
    <String, dynamic>{
      'children': instance.children,
    };

_$_ListItem _$$_ListItemFromJson(Map<String, dynamic> json) => _$_ListItem(
      data: json['data'] == null
          ? null
          : ListItemData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ListItemToJson(_$_ListItem instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_ListItemData _$$_ListItemDataFromJson(Map<String, dynamic> json) =>
    _$_ListItemData(
      title: json['title'] as String?,
      name: json['name'] as String?,
      selftext_html: json['selftext_html'] as String?,
      selftext: json['selftext'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_ListItemDataToJson(_$_ListItemData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'name': instance.name,
      'selftext_html': instance.selftext_html,
      'selftext': instance.selftext,
      'url': instance.url,
    };
