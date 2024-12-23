// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../data/models/remote/simple_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimpleEventModel _$SimpleEventModelFromJson(Map<String, dynamic> json) {
  return _SimpleEventModel.fromJson(json);
}

/// @nodoc
mixin _$SimpleEventModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  String get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;

  /// Serializes this SimpleEventModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimpleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimpleEventModelCopyWith<SimpleEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleEventModelCopyWith<$Res> {
  factory $SimpleEventModelCopyWith(
          SimpleEventModel value, $Res Function(SimpleEventModel) then) =
      _$SimpleEventModelCopyWithImpl<$Res, SimpleEventModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'details') String details,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'date') String date});
}

/// @nodoc
class _$SimpleEventModelCopyWithImpl<$Res, $Val extends SimpleEventModel>
    implements $SimpleEventModelCopyWith<$Res> {
  _$SimpleEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimpleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? details = null,
    Object? address = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleEventModelImplCopyWith<$Res>
    implements $SimpleEventModelCopyWith<$Res> {
  factory _$$SimpleEventModelImplCopyWith(_$SimpleEventModelImpl value,
          $Res Function(_$SimpleEventModelImpl) then) =
      __$$SimpleEventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'details') String details,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'date') String date});
}

/// @nodoc
class __$$SimpleEventModelImplCopyWithImpl<$Res>
    extends _$SimpleEventModelCopyWithImpl<$Res, _$SimpleEventModelImpl>
    implements _$$SimpleEventModelImplCopyWith<$Res> {
  __$$SimpleEventModelImplCopyWithImpl(_$SimpleEventModelImpl _value,
      $Res Function(_$SimpleEventModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? details = null,
    Object? address = null,
    Object? date = null,
  }) {
    return _then(_$SimpleEventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleEventModelImpl implements _SimpleEventModel {
  _$SimpleEventModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'details') required this.details,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'date') required this.date});

  factory _$SimpleEventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleEventModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'details')
  final String details;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'date')
  final String date;

  @override
  String toString() {
    return 'SimpleEventModel(id: $id, title: $title, details: $details, address: $address, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleEventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, details, address, date);

  /// Create a copy of SimpleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleEventModelImplCopyWith<_$SimpleEventModelImpl> get copyWith =>
      __$$SimpleEventModelImplCopyWithImpl<_$SimpleEventModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleEventModelImplToJson(
      this,
    );
  }
}

abstract class _SimpleEventModel implements SimpleEventModel {
  factory _SimpleEventModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'details') required final String details,
          @JsonKey(name: 'address') required final String address,
          @JsonKey(name: 'date') required final String date}) =
      _$SimpleEventModelImpl;

  factory _SimpleEventModel.fromJson(Map<String, dynamic> json) =
      _$SimpleEventModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'details')
  String get details;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'date')
  String get date;

  /// Create a copy of SimpleEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimpleEventModelImplCopyWith<_$SimpleEventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
