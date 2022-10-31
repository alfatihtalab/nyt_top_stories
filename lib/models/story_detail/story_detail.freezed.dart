// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'story_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoryDetail _$StoryDetailFromJson(Map<String, dynamic> json) {
  return _StoryDetail.fromJson(json);
}

/// @nodoc
mixin _$StoryDetail {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get webViewUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryDetailCopyWith<StoryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryDetailCopyWith<$Res> {
  factory $StoryDetailCopyWith(
          StoryDetail value, $Res Function(StoryDetail) then) =
      _$StoryDetailCopyWithImpl<$Res, StoryDetail>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? author,
      String? imageUrl,
      String? webViewUrl});
}

/// @nodoc
class _$StoryDetailCopyWithImpl<$Res, $Val extends StoryDetail>
    implements $StoryDetailCopyWith<$Res> {
  _$StoryDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? imageUrl = freezed,
    Object? webViewUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      webViewUrl: freezed == webViewUrl
          ? _value.webViewUrl
          : webViewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoryDetailCopyWith<$Res>
    implements $StoryDetailCopyWith<$Res> {
  factory _$$_StoryDetailCopyWith(
          _$_StoryDetail value, $Res Function(_$_StoryDetail) then) =
      __$$_StoryDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? author,
      String? imageUrl,
      String? webViewUrl});
}

/// @nodoc
class __$$_StoryDetailCopyWithImpl<$Res>
    extends _$StoryDetailCopyWithImpl<$Res, _$_StoryDetail>
    implements _$$_StoryDetailCopyWith<$Res> {
  __$$_StoryDetailCopyWithImpl(
      _$_StoryDetail _value, $Res Function(_$_StoryDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? imageUrl = freezed,
    Object? webViewUrl = freezed,
  }) {
    return _then(_$_StoryDetail(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      webViewUrl: freezed == webViewUrl
          ? _value.webViewUrl
          : webViewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoryDetail implements _StoryDetail {
  const _$_StoryDetail(
      {required this.title,
      required this.description,
      required this.author,
      required this.imageUrl,
      required this.webViewUrl});

  factory _$_StoryDetail.fromJson(Map<String, dynamic> json) =>
      _$$_StoryDetailFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? author;
  @override
  final String? imageUrl;
  @override
  final String? webViewUrl;

  @override
  String toString() {
    return 'StoryDetail(title: $title, description: $description, author: $author, imageUrl: $imageUrl, webViewUrl: $webViewUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryDetail &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.webViewUrl, webViewUrl) ||
                other.webViewUrl == webViewUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, author, imageUrl, webViewUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoryDetailCopyWith<_$_StoryDetail> get copyWith =>
      __$$_StoryDetailCopyWithImpl<_$_StoryDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoryDetailToJson(
      this,
    );
  }
}

abstract class _StoryDetail implements StoryDetail {
  const factory _StoryDetail(
      {required final String? title,
      required final String? description,
      required final String? author,
      required final String? imageUrl,
      required final String? webViewUrl}) = _$_StoryDetail;

  factory _StoryDetail.fromJson(Map<String, dynamic> json) =
      _$_StoryDetail.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get author;
  @override
  String? get imageUrl;
  @override
  String? get webViewUrl;
  @override
  @JsonKey(ignore: true)
  _$$_StoryDetailCopyWith<_$_StoryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
