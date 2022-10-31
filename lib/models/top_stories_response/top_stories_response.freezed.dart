// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_stories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopStoriesResponse _$TopStoriesResponseFromJson(Map<String, dynamic> json) {
  return _TopStoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$TopStoriesResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  String? get section => throw _privateConstructorUsedError;
  DateTime? get last_updated => throw _privateConstructorUsedError;
  int? get num_results => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopStoriesResponseCopyWith<TopStoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopStoriesResponseCopyWith<$Res> {
  factory $TopStoriesResponseCopyWith(
          TopStoriesResponse value, $Res Function(TopStoriesResponse) then) =
      _$TopStoriesResponseCopyWithImpl<$Res, TopStoriesResponse>;
  @useResult
  $Res call(
      {String? status,
      String? copyright,
      String? section,
      DateTime? last_updated,
      int? num_results,
      List<Result> results});
}

/// @nodoc
class _$TopStoriesResponseCopyWithImpl<$Res, $Val extends TopStoriesResponse>
    implements $TopStoriesResponseCopyWith<$Res> {
  _$TopStoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? copyright = freezed,
    Object? section = freezed,
    Object? last_updated = freezed,
    Object? num_results = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      last_updated: freezed == last_updated
          ? _value.last_updated
          : last_updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      num_results: freezed == num_results
          ? _value.num_results
          : num_results // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopStoriesResponseCopyWith<$Res>
    implements $TopStoriesResponseCopyWith<$Res> {
  factory _$$_TopStoriesResponseCopyWith(_$_TopStoriesResponse value,
          $Res Function(_$_TopStoriesResponse) then) =
      __$$_TopStoriesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? copyright,
      String? section,
      DateTime? last_updated,
      int? num_results,
      List<Result> results});
}

/// @nodoc
class __$$_TopStoriesResponseCopyWithImpl<$Res>
    extends _$TopStoriesResponseCopyWithImpl<$Res, _$_TopStoriesResponse>
    implements _$$_TopStoriesResponseCopyWith<$Res> {
  __$$_TopStoriesResponseCopyWithImpl(
      _$_TopStoriesResponse _value, $Res Function(_$_TopStoriesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? copyright = freezed,
    Object? section = freezed,
    Object? last_updated = freezed,
    Object? num_results = freezed,
    Object? results = null,
  }) {
    return _then(_$_TopStoriesResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      last_updated: freezed == last_updated
          ? _value.last_updated
          : last_updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      num_results: freezed == num_results
          ? _value.num_results
          : num_results // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TopStoriesResponse implements _TopStoriesResponse {
  const _$_TopStoriesResponse(
      {required this.status,
      required this.copyright,
      required this.section,
      required this.last_updated,
      required this.num_results,
      final List<Result> results = const []})
      : _results = results;

  factory _$_TopStoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TopStoriesResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? copyright;
  @override
  final String? section;
  @override
  final DateTime? last_updated;
  @override
  final int? num_results;
  final List<Result> _results;
  @override
  @JsonKey()
  List<Result> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'TopStoriesResponse(status: $status, copyright: $copyright, section: $section, last_updated: $last_updated, num_results: $num_results, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopStoriesResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.last_updated, last_updated) ||
                other.last_updated == last_updated) &&
            (identical(other.num_results, num_results) ||
                other.num_results == num_results) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, copyright, section,
      last_updated, num_results, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopStoriesResponseCopyWith<_$_TopStoriesResponse> get copyWith =>
      __$$_TopStoriesResponseCopyWithImpl<_$_TopStoriesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopStoriesResponseToJson(
      this,
    );
  }
}

abstract class _TopStoriesResponse implements TopStoriesResponse {
  const factory _TopStoriesResponse(
      {required final String? status,
      required final String? copyright,
      required final String? section,
      required final DateTime? last_updated,
      required final int? num_results,
      final List<Result> results}) = _$_TopStoriesResponse;

  factory _TopStoriesResponse.fromJson(Map<String, dynamic> json) =
      _$_TopStoriesResponse.fromJson;

  @override
  String? get status;
  @override
  String? get copyright;
  @override
  String? get section;
  @override
  DateTime? get last_updated;
  @override
  int? get num_results;
  @override
  List<Result> get results;
  @override
  @JsonKey(ignore: true)
  _$$_TopStoriesResponseCopyWith<_$_TopStoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get section => throw _privateConstructorUsedError;
  String? get subsection => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get abstract => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;
  String? get byline => throw _privateConstructorUsedError;
  String? get item_type => throw _privateConstructorUsedError;
  DateTime? get updated_date => throw _privateConstructorUsedError;
  DateTime? get created_date => throw _privateConstructorUsedError;
  DateTime? get published_date => throw _privateConstructorUsedError;
  String? get material_type_facet => throw _privateConstructorUsedError;
  String? get kicker => throw _privateConstructorUsedError;
  List<String?> get des_facet => throw _privateConstructorUsedError;
  List<String?> get org_facet => throw _privateConstructorUsedError;
  List<String?> get per_facet => throw _privateConstructorUsedError;
  List<String?> get geo_facet => throw _privateConstructorUsedError;
  List<Multimedia> get multimedia => throw _privateConstructorUsedError;
  String? get short_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {String? section,
      String? subsection,
      String? title,
      String? abstract,
      String? url,
      String? uri,
      String? byline,
      String? item_type,
      DateTime? updated_date,
      DateTime? created_date,
      DateTime? published_date,
      String? material_type_facet,
      String? kicker,
      List<String?> des_facet,
      List<String?> org_facet,
      List<String?> per_facet,
      List<String?> geo_facet,
      List<Multimedia> multimedia,
      String? short_url});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = freezed,
    Object? subsection = freezed,
    Object? title = freezed,
    Object? abstract = freezed,
    Object? url = freezed,
    Object? uri = freezed,
    Object? byline = freezed,
    Object? item_type = freezed,
    Object? updated_date = freezed,
    Object? created_date = freezed,
    Object? published_date = freezed,
    Object? material_type_facet = freezed,
    Object? kicker = freezed,
    Object? des_facet = null,
    Object? org_facet = null,
    Object? per_facet = null,
    Object? geo_facet = null,
    Object? multimedia = null,
    Object? short_url = freezed,
  }) {
    return _then(_value.copyWith(
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      subsection: freezed == subsection
          ? _value.subsection
          : subsection // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      byline: freezed == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String?,
      item_type: freezed == item_type
          ? _value.item_type
          : item_type // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_date: freezed == updated_date
          ? _value.updated_date
          : updated_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      created_date: freezed == created_date
          ? _value.created_date
          : created_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      published_date: freezed == published_date
          ? _value.published_date
          : published_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      material_type_facet: freezed == material_type_facet
          ? _value.material_type_facet
          : material_type_facet // ignore: cast_nullable_to_non_nullable
              as String?,
      kicker: freezed == kicker
          ? _value.kicker
          : kicker // ignore: cast_nullable_to_non_nullable
              as String?,
      des_facet: null == des_facet
          ? _value.des_facet
          : des_facet // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      org_facet: null == org_facet
          ? _value.org_facet
          : org_facet // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      per_facet: null == per_facet
          ? _value.per_facet
          : per_facet // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      geo_facet: null == geo_facet
          ? _value.geo_facet
          : geo_facet // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      multimedia: null == multimedia
          ? _value.multimedia
          : multimedia // ignore: cast_nullable_to_non_nullable
              as List<Multimedia>,
      short_url: freezed == short_url
          ? _value.short_url
          : short_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? section,
      String? subsection,
      String? title,
      String? abstract,
      String? url,
      String? uri,
      String? byline,
      String? item_type,
      DateTime? updated_date,
      DateTime? created_date,
      DateTime? published_date,
      String? material_type_facet,
      String? kicker,
      List<String?> des_facet,
      List<String?> org_facet,
      List<String?> per_facet,
      List<String?> geo_facet,
      List<Multimedia> multimedia,
      String? short_url});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = freezed,
    Object? subsection = freezed,
    Object? title = freezed,
    Object? abstract = freezed,
    Object? url = freezed,
    Object? uri = freezed,
    Object? byline = freezed,
    Object? item_type = freezed,
    Object? updated_date = freezed,
    Object? created_date = freezed,
    Object? published_date = freezed,
    Object? material_type_facet = freezed,
    Object? kicker = freezed,
    Object? des_facet = null,
    Object? org_facet = null,
    Object? per_facet = null,
    Object? geo_facet = null,
    Object? multimedia = null,
    Object? short_url = freezed,
  }) {
    return _then(_$_Result(
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      subsection: freezed == subsection
          ? _value.subsection
          : subsection // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      byline: freezed == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String?,
      item_type: freezed == item_type
          ? _value.item_type
          : item_type // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_date: freezed == updated_date
          ? _value.updated_date
          : updated_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      created_date: freezed == created_date
          ? _value.created_date
          : created_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      published_date: freezed == published_date
          ? _value.published_date
          : published_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      material_type_facet: freezed == material_type_facet
          ? _value.material_type_facet
          : material_type_facet // ignore: cast_nullable_to_non_nullable
              as String?,
      kicker: freezed == kicker
          ? _value.kicker
          : kicker // ignore: cast_nullable_to_non_nullable
              as String?,
      des_facet: null == des_facet
          ? _value._des_facet
          : des_facet // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      org_facet: null == org_facet
          ? _value._org_facet
          : org_facet // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      per_facet: null == per_facet
          ? _value._per_facet
          : per_facet // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      geo_facet: null == geo_facet
          ? _value._geo_facet
          : geo_facet // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      multimedia: null == multimedia
          ? _value._multimedia
          : multimedia // ignore: cast_nullable_to_non_nullable
              as List<Multimedia>,
      short_url: freezed == short_url
          ? _value.short_url
          : short_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Result implements _Result {
  const _$_Result(
      {required this.section,
      required this.subsection,
      required this.title,
      required this.abstract,
      required this.url,
      required this.uri,
      required this.byline,
      required this.item_type,
      required this.updated_date,
      required this.created_date,
      required this.published_date,
      required this.material_type_facet,
      required this.kicker,
      final List<String?> des_facet = const [],
      final List<String?> org_facet = const [],
      final List<String?> per_facet = const [],
      final List<String?> geo_facet = const [],
      final List<Multimedia> multimedia = const [],
      required this.short_url})
      : _des_facet = des_facet,
        _org_facet = org_facet,
        _per_facet = per_facet,
        _geo_facet = geo_facet,
        _multimedia = multimedia;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final String? section;
  @override
  final String? subsection;
  @override
  final String? title;
  @override
  final String? abstract;
  @override
  final String? url;
  @override
  final String? uri;
  @override
  final String? byline;
  @override
  final String? item_type;
  @override
  final DateTime? updated_date;
  @override
  final DateTime? created_date;
  @override
  final DateTime? published_date;
  @override
  final String? material_type_facet;
  @override
  final String? kicker;
  final List<String?> _des_facet;
  @override
  @JsonKey()
  List<String?> get des_facet {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_des_facet);
  }

  final List<String?> _org_facet;
  @override
  @JsonKey()
  List<String?> get org_facet {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_org_facet);
  }

  final List<String?> _per_facet;
  @override
  @JsonKey()
  List<String?> get per_facet {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_per_facet);
  }

  final List<String?> _geo_facet;
  @override
  @JsonKey()
  List<String?> get geo_facet {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_geo_facet);
  }

  final List<Multimedia> _multimedia;
  @override
  @JsonKey()
  List<Multimedia> get multimedia {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_multimedia);
  }

  @override
  final String? short_url;

  @override
  String toString() {
    return 'Result(section: $section, subsection: $subsection, title: $title, abstract: $abstract, url: $url, uri: $uri, byline: $byline, item_type: $item_type, updated_date: $updated_date, created_date: $created_date, published_date: $published_date, material_type_facet: $material_type_facet, kicker: $kicker, des_facet: $des_facet, org_facet: $org_facet, per_facet: $per_facet, geo_facet: $geo_facet, multimedia: $multimedia, short_url: $short_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.subsection, subsection) ||
                other.subsection == subsection) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.abstract, abstract) ||
                other.abstract == abstract) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.byline, byline) || other.byline == byline) &&
            (identical(other.item_type, item_type) ||
                other.item_type == item_type) &&
            (identical(other.updated_date, updated_date) ||
                other.updated_date == updated_date) &&
            (identical(other.created_date, created_date) ||
                other.created_date == created_date) &&
            (identical(other.published_date, published_date) ||
                other.published_date == published_date) &&
            (identical(other.material_type_facet, material_type_facet) ||
                other.material_type_facet == material_type_facet) &&
            (identical(other.kicker, kicker) || other.kicker == kicker) &&
            const DeepCollectionEquality()
                .equals(other._des_facet, _des_facet) &&
            const DeepCollectionEquality()
                .equals(other._org_facet, _org_facet) &&
            const DeepCollectionEquality()
                .equals(other._per_facet, _per_facet) &&
            const DeepCollectionEquality()
                .equals(other._geo_facet, _geo_facet) &&
            const DeepCollectionEquality()
                .equals(other._multimedia, _multimedia) &&
            (identical(other.short_url, short_url) ||
                other.short_url == short_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        section,
        subsection,
        title,
        abstract,
        url,
        uri,
        byline,
        item_type,
        updated_date,
        created_date,
        published_date,
        material_type_facet,
        kicker,
        const DeepCollectionEquality().hash(_des_facet),
        const DeepCollectionEquality().hash(_org_facet),
        const DeepCollectionEquality().hash(_per_facet),
        const DeepCollectionEquality().hash(_geo_facet),
        const DeepCollectionEquality().hash(_multimedia),
        short_url
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {required final String? section,
      required final String? subsection,
      required final String? title,
      required final String? abstract,
      required final String? url,
      required final String? uri,
      required final String? byline,
      required final String? item_type,
      required final DateTime? updated_date,
      required final DateTime? created_date,
      required final DateTime? published_date,
      required final String? material_type_facet,
      required final String? kicker,
      final List<String?> des_facet,
      final List<String?> org_facet,
      final List<String?> per_facet,
      final List<String?> geo_facet,
      final List<Multimedia> multimedia,
      required final String? short_url}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  String? get section;
  @override
  String? get subsection;
  @override
  String? get title;
  @override
  String? get abstract;
  @override
  String? get url;
  @override
  String? get uri;
  @override
  String? get byline;
  @override
  String? get item_type;
  @override
  DateTime? get updated_date;
  @override
  DateTime? get created_date;
  @override
  DateTime? get published_date;
  @override
  String? get material_type_facet;
  @override
  String? get kicker;
  @override
  List<String?> get des_facet;
  @override
  List<String?> get org_facet;
  @override
  List<String?> get per_facet;
  @override
  List<String?> get geo_facet;
  @override
  List<Multimedia> get multimedia;
  @override
  String? get short_url;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Multimedia _$MultimediaFromJson(Map<String, dynamic> json) {
  return _Multimedia.fromJson(json);
}

/// @nodoc
mixin _$Multimedia {
  String? get url => throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get subtype => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultimediaCopyWith<Multimedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultimediaCopyWith<$Res> {
  factory $MultimediaCopyWith(
          Multimedia value, $Res Function(Multimedia) then) =
      _$MultimediaCopyWithImpl<$Res, Multimedia>;
  @useResult
  $Res call(
      {String? url,
      String? format,
      int? height,
      int? width,
      String? type,
      String? subtype,
      String? caption,
      String? copyright});
}

/// @nodoc
class _$MultimediaCopyWithImpl<$Res, $Val extends Multimedia>
    implements $MultimediaCopyWith<$Res> {
  _$MultimediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? format = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? type = freezed,
    Object? subtype = freezed,
    Object? caption = freezed,
    Object? copyright = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subtype: freezed == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MultimediaCopyWith<$Res>
    implements $MultimediaCopyWith<$Res> {
  factory _$$_MultimediaCopyWith(
          _$_Multimedia value, $Res Function(_$_Multimedia) then) =
      __$$_MultimediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url,
      String? format,
      int? height,
      int? width,
      String? type,
      String? subtype,
      String? caption,
      String? copyright});
}

/// @nodoc
class __$$_MultimediaCopyWithImpl<$Res>
    extends _$MultimediaCopyWithImpl<$Res, _$_Multimedia>
    implements _$$_MultimediaCopyWith<$Res> {
  __$$_MultimediaCopyWithImpl(
      _$_Multimedia _value, $Res Function(_$_Multimedia) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? format = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? type = freezed,
    Object? subtype = freezed,
    Object? caption = freezed,
    Object? copyright = freezed,
  }) {
    return _then(_$_Multimedia(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subtype: freezed == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Multimedia implements _Multimedia {
  const _$_Multimedia(
      {required this.url,
      required this.format,
      required this.height,
      required this.width,
      required this.type,
      required this.subtype,
      required this.caption,
      required this.copyright});

  factory _$_Multimedia.fromJson(Map<String, dynamic> json) =>
      _$$_MultimediaFromJson(json);

  @override
  final String? url;
  @override
  final String? format;
  @override
  final int? height;
  @override
  final int? width;
  @override
  final String? type;
  @override
  final String? subtype;
  @override
  final String? caption;
  @override
  final String? copyright;

  @override
  String toString() {
    return 'Multimedia(url: $url, format: $format, height: $height, width: $width, type: $type, subtype: $subtype, caption: $caption, copyright: $copyright)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Multimedia &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subtype, subtype) || other.subtype == subtype) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, format, height, width, type,
      subtype, caption, copyright);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultimediaCopyWith<_$_Multimedia> get copyWith =>
      __$$_MultimediaCopyWithImpl<_$_Multimedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultimediaToJson(
      this,
    );
  }
}

abstract class _Multimedia implements Multimedia {
  const factory _Multimedia(
      {required final String? url,
      required final String? format,
      required final int? height,
      required final int? width,
      required final String? type,
      required final String? subtype,
      required final String? caption,
      required final String? copyright}) = _$_Multimedia;

  factory _Multimedia.fromJson(Map<String, dynamic> json) =
      _$_Multimedia.fromJson;

  @override
  String? get url;
  @override
  String? get format;
  @override
  int? get height;
  @override
  int? get width;
  @override
  String? get type;
  @override
  String? get subtype;
  @override
  String? get caption;
  @override
  String? get copyright;
  @override
  @JsonKey(ignore: true)
  _$$_MultimediaCopyWith<_$_Multimedia> get copyWith =>
      throw _privateConstructorUsedError;
}
