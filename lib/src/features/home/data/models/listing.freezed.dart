// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListingModel _$ListingModelFromJson(Map<String, dynamic> json) {
  return _ListingModel.fromJson(json);
}

/// @nodoc
mixin _$ListingModel {
  String? get kind => throw _privateConstructorUsedError;
  ListingData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingModelCopyWith<ListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingModelCopyWith<$Res> {
  factory $ListingModelCopyWith(
          ListingModel value, $Res Function(ListingModel) then) =
      _$ListingModelCopyWithImpl<$Res>;
  $Res call({String? kind, ListingData? data});

  $ListingDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ListingModelCopyWithImpl<$Res> implements $ListingModelCopyWith<$Res> {
  _$ListingModelCopyWithImpl(this._value, this._then);

  final ListingModel _value;
  // ignore: unused_field
  final $Res Function(ListingModel) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListingData?,
    ));
  }

  @override
  $ListingDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ListingDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_ListingModelCopyWith<$Res>
    implements $ListingModelCopyWith<$Res> {
  factory _$$_ListingModelCopyWith(
          _$_ListingModel value, $Res Function(_$_ListingModel) then) =
      __$$_ListingModelCopyWithImpl<$Res>;
  @override
  $Res call({String? kind, ListingData? data});

  @override
  $ListingDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ListingModelCopyWithImpl<$Res>
    extends _$ListingModelCopyWithImpl<$Res>
    implements _$$_ListingModelCopyWith<$Res> {
  __$$_ListingModelCopyWithImpl(
      _$_ListingModel _value, $Res Function(_$_ListingModel) _then)
      : super(_value, (v) => _then(v as _$_ListingModel));

  @override
  _$_ListingModel get _value => super._value as _$_ListingModel;

  @override
  $Res call({
    Object? kind = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ListingModel(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListingData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListingModel with DiagnosticableTreeMixin implements _ListingModel {
  const _$_ListingModel({required this.kind, required this.data});

  factory _$_ListingModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListingModelFromJson(json);

  @override
  final String? kind;
  @override
  final ListingData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListingModel(kind: $kind, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListingModel'))
      ..add(DiagnosticsProperty('kind', kind))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListingModel &&
            const DeepCollectionEquality().equals(other.kind, kind) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kind),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_ListingModelCopyWith<_$_ListingModel> get copyWith =>
      __$$_ListingModelCopyWithImpl<_$_ListingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListingModelToJson(this);
  }
}

abstract class _ListingModel implements ListingModel {
  const factory _ListingModel(
      {required final String? kind,
      required final ListingData? data}) = _$_ListingModel;

  factory _ListingModel.fromJson(Map<String, dynamic> json) =
      _$_ListingModel.fromJson;

  @override
  String? get kind => throw _privateConstructorUsedError;
  @override
  ListingData? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ListingModelCopyWith<_$_ListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ListingData _$ListingDataFromJson(Map<String, dynamic> json) {
  return _ListingData.fromJson(json);
}

/// @nodoc
mixin _$ListingData {
  List<ListItem>? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingDataCopyWith<ListingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingDataCopyWith<$Res> {
  factory $ListingDataCopyWith(
          ListingData value, $Res Function(ListingData) then) =
      _$ListingDataCopyWithImpl<$Res>;
  $Res call({List<ListItem>? children});
}

/// @nodoc
class _$ListingDataCopyWithImpl<$Res> implements $ListingDataCopyWith<$Res> {
  _$ListingDataCopyWithImpl(this._value, this._then);

  final ListingData _value;
  // ignore: unused_field
  final $Res Function(ListingData) _then;

  @override
  $Res call({
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ListItem>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListingDataCopyWith<$Res>
    implements $ListingDataCopyWith<$Res> {
  factory _$$_ListingDataCopyWith(
          _$_ListingData value, $Res Function(_$_ListingData) then) =
      __$$_ListingDataCopyWithImpl<$Res>;
  @override
  $Res call({List<ListItem>? children});
}

/// @nodoc
class __$$_ListingDataCopyWithImpl<$Res> extends _$ListingDataCopyWithImpl<$Res>
    implements _$$_ListingDataCopyWith<$Res> {
  __$$_ListingDataCopyWithImpl(
      _$_ListingData _value, $Res Function(_$_ListingData) _then)
      : super(_value, (v) => _then(v as _$_ListingData));

  @override
  _$_ListingData get _value => super._value as _$_ListingData;

  @override
  $Res call({
    Object? children = freezed,
  }) {
    return _then(_$_ListingData(
      children: children == freezed
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ListItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListingData with DiagnosticableTreeMixin implements _ListingData {
  const _$_ListingData({required final List<ListItem>? children})
      : _children = children;

  factory _$_ListingData.fromJson(Map<String, dynamic> json) =>
      _$$_ListingDataFromJson(json);

  final List<ListItem>? _children;
  @override
  List<ListItem>? get children {
    final value = _children;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListingData(children: $children)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListingData'))
      ..add(DiagnosticsProperty('children', children));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListingData &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  _$$_ListingDataCopyWith<_$_ListingData> get copyWith =>
      __$$_ListingDataCopyWithImpl<_$_ListingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListingDataToJson(this);
  }
}

abstract class _ListingData implements ListingData {
  const factory _ListingData({required final List<ListItem>? children}) =
      _$_ListingData;

  factory _ListingData.fromJson(Map<String, dynamic> json) =
      _$_ListingData.fromJson;

  @override
  List<ListItem>? get children => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ListingDataCopyWith<_$_ListingData> get copyWith =>
      throw _privateConstructorUsedError;
}

ListItem _$ListItemFromJson(Map<String, dynamic> json) {
  return _ListItem.fromJson(json);
}

/// @nodoc
mixin _$ListItem {
  ListItemData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListItemCopyWith<ListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListItemCopyWith<$Res> {
  factory $ListItemCopyWith(ListItem value, $Res Function(ListItem) then) =
      _$ListItemCopyWithImpl<$Res>;
  $Res call({ListItemData? data});

  $ListItemDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ListItemCopyWithImpl<$Res> implements $ListItemCopyWith<$Res> {
  _$ListItemCopyWithImpl(this._value, this._then);

  final ListItem _value;
  // ignore: unused_field
  final $Res Function(ListItem) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListItemData?,
    ));
  }

  @override
  $ListItemDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ListItemDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_ListItemCopyWith<$Res> implements $ListItemCopyWith<$Res> {
  factory _$$_ListItemCopyWith(
          _$_ListItem value, $Res Function(_$_ListItem) then) =
      __$$_ListItemCopyWithImpl<$Res>;
  @override
  $Res call({ListItemData? data});

  @override
  $ListItemDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ListItemCopyWithImpl<$Res> extends _$ListItemCopyWithImpl<$Res>
    implements _$$_ListItemCopyWith<$Res> {
  __$$_ListItemCopyWithImpl(
      _$_ListItem _value, $Res Function(_$_ListItem) _then)
      : super(_value, (v) => _then(v as _$_ListItem));

  @override
  _$_ListItem get _value => super._value as _$_ListItem;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ListItem(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListItemData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListItem with DiagnosticableTreeMixin implements _ListItem {
  const _$_ListItem({required this.data});

  factory _$_ListItem.fromJson(Map<String, dynamic> json) =>
      _$$_ListItemFromJson(json);

  @override
  final ListItemData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListItem(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListItem'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListItem &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_ListItemCopyWith<_$_ListItem> get copyWith =>
      __$$_ListItemCopyWithImpl<_$_ListItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListItemToJson(this);
  }
}

abstract class _ListItem implements ListItem {
  const factory _ListItem({required final ListItemData? data}) = _$_ListItem;

  factory _ListItem.fromJson(Map<String, dynamic> json) = _$_ListItem.fromJson;

  @override
  ListItemData? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ListItemCopyWith<_$_ListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

ListItemData _$ListItemDataFromJson(Map<String, dynamic> json) {
  return _ListItemData.fromJson(json);
}

/// @nodoc
mixin _$ListItemData {
  String? get title => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get selftext_html => throw _privateConstructorUsedError;
  String? get selftext => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListItemDataCopyWith<ListItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListItemDataCopyWith<$Res> {
  factory $ListItemDataCopyWith(
          ListItemData value, $Res Function(ListItemData) then) =
      _$ListItemDataCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? name,
      String? selftext_html,
      String? selftext,
      String? url});
}

/// @nodoc
class _$ListItemDataCopyWithImpl<$Res> implements $ListItemDataCopyWith<$Res> {
  _$ListItemDataCopyWithImpl(this._value, this._then);

  final ListItemData _value;
  // ignore: unused_field
  final $Res Function(ListItemData) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? name = freezed,
    Object? selftext_html = freezed,
    Object? selftext = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      selftext_html: selftext_html == freezed
          ? _value.selftext_html
          : selftext_html // ignore: cast_nullable_to_non_nullable
              as String?,
      selftext: selftext == freezed
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListItemDataCopyWith<$Res>
    implements $ListItemDataCopyWith<$Res> {
  factory _$$_ListItemDataCopyWith(
          _$_ListItemData value, $Res Function(_$_ListItemData) then) =
      __$$_ListItemDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? name,
      String? selftext_html,
      String? selftext,
      String? url});
}

/// @nodoc
class __$$_ListItemDataCopyWithImpl<$Res>
    extends _$ListItemDataCopyWithImpl<$Res>
    implements _$$_ListItemDataCopyWith<$Res> {
  __$$_ListItemDataCopyWithImpl(
      _$_ListItemData _value, $Res Function(_$_ListItemData) _then)
      : super(_value, (v) => _then(v as _$_ListItemData));

  @override
  _$_ListItemData get _value => super._value as _$_ListItemData;

  @override
  $Res call({
    Object? title = freezed,
    Object? name = freezed,
    Object? selftext_html = freezed,
    Object? selftext = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_ListItemData(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      selftext_html: selftext_html == freezed
          ? _value.selftext_html
          : selftext_html // ignore: cast_nullable_to_non_nullable
              as String?,
      selftext: selftext == freezed
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListItemData with DiagnosticableTreeMixin implements _ListItemData {
  const _$_ListItemData(
      {required this.title,
      required this.name,
      required this.selftext_html,
      required this.selftext,
      required this.url});

  factory _$_ListItemData.fromJson(Map<String, dynamic> json) =>
      _$$_ListItemDataFromJson(json);

  @override
  final String? title;
  @override
  final String? name;
  @override
  final String? selftext_html;
  @override
  final String? selftext;
  @override
  final String? url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListItemData(title: $title, name: $name, selftext_html: $selftext_html, selftext: $selftext, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListItemData'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('selftext_html', selftext_html))
      ..add(DiagnosticsProperty('selftext', selftext))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListItemData &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.selftext_html, selftext_html) &&
            const DeepCollectionEquality().equals(other.selftext, selftext) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(selftext_html),
      const DeepCollectionEquality().hash(selftext),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_ListItemDataCopyWith<_$_ListItemData> get copyWith =>
      __$$_ListItemDataCopyWithImpl<_$_ListItemData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListItemDataToJson(this);
  }
}

abstract class _ListItemData implements ListItemData {
  const factory _ListItemData(
      {required final String? title,
      required final String? name,
      required final String? selftext_html,
      required final String? selftext,
      required final String? url}) = _$_ListItemData;

  factory _ListItemData.fromJson(Map<String, dynamic> json) =
      _$_ListItemData.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get selftext_html => throw _privateConstructorUsedError;
  @override
  String? get selftext => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ListItemDataCopyWith<_$_ListItemData> get copyWith =>
      throw _privateConstructorUsedError;
}
