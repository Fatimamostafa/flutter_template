import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'listing.freezed.dart';

part 'listing.g.dart';


@freezed
abstract class ListingModel with _$ListingModel {
  const factory ListingModel({
   required String? kind,
   required ListingData? data,
  }) = _ListingModel;

  factory ListingModel.fromJson(Map<String, dynamic> json) => _$ListingModelFromJson(json);
}

@freezed
abstract class ListingData with _$ListingData {
  const factory ListingData({
    required List<ListItem>? children,
  }) = _ListingData;

  factory ListingData.fromJson(Map<String, dynamic> json) => _$ListingDataFromJson(json);
}

@freezed
abstract class ListItem with _$ListItem {
  const factory ListItem({
    required ListItemData? data,
  }) = _ListItem;

  factory ListItem.fromJson(Map<String, dynamic> json) => _$ListItemFromJson(json);
}


@freezed
abstract class ListItemData with _$ListItemData {
  const factory ListItemData({
    required String? title,
    required String? name,
    required String? selftext_html,
    required String? selftext,
    required String? url,
  }) = _ListItemData;

  factory ListItemData.fromJson(Map<String, dynamic> json) => _$ListItemDataFromJson(json);
}