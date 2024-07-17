// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_company_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddCompanyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyName, Uint8List image) addCompany,
    required TResult Function(String? companyName, Uint8List? image)
        editCompany,
    required TResult Function() removeCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyName, Uint8List image)? addCompany,
    TResult? Function(String? companyName, Uint8List? image)? editCompany,
    TResult? Function()? removeCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyName, Uint8List image)? addCompany,
    TResult Function(String? companyName, Uint8List? image)? editCompany,
    TResult Function()? removeCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_EditCompany value) editCompany,
    required TResult Function(_RemoveCompany value) removeCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCompany value)? addCompany,
    TResult? Function(_EditCompany value)? editCompany,
    TResult? Function(_RemoveCompany value)? removeCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_EditCompany value)? editCompany,
    TResult Function(_RemoveCompany value)? removeCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCompanyEventCopyWith<$Res> {
  factory $AddCompanyEventCopyWith(
          AddCompanyEvent value, $Res Function(AddCompanyEvent) then) =
      _$AddCompanyEventCopyWithImpl<$Res, AddCompanyEvent>;
}

/// @nodoc
class _$AddCompanyEventCopyWithImpl<$Res, $Val extends AddCompanyEvent>
    implements $AddCompanyEventCopyWith<$Res> {
  _$AddCompanyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCompanyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddCompanyImplCopyWith<$Res> {
  factory _$$AddCompanyImplCopyWith(
          _$AddCompanyImpl value, $Res Function(_$AddCompanyImpl) then) =
      __$$AddCompanyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String companyName, Uint8List image});
}

/// @nodoc
class __$$AddCompanyImplCopyWithImpl<$Res>
    extends _$AddCompanyEventCopyWithImpl<$Res, _$AddCompanyImpl>
    implements _$$AddCompanyImplCopyWith<$Res> {
  __$$AddCompanyImplCopyWithImpl(
      _$AddCompanyImpl _value, $Res Function(_$AddCompanyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCompanyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? image = null,
  }) {
    return _then(_$AddCompanyImpl(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$AddCompanyImpl implements _AddCompany {
  const _$AddCompanyImpl({required this.companyName, required this.image});

  @override
  final String companyName;
  @override
  final Uint8List image;

  @override
  String toString() {
    return 'AddCompanyEvent.addCompany(companyName: $companyName, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCompanyImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, companyName, const DeepCollectionEquality().hash(image));

  /// Create a copy of AddCompanyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCompanyImplCopyWith<_$AddCompanyImpl> get copyWith =>
      __$$AddCompanyImplCopyWithImpl<_$AddCompanyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyName, Uint8List image) addCompany,
    required TResult Function(String? companyName, Uint8List? image)
        editCompany,
    required TResult Function() removeCompany,
  }) {
    return addCompany(companyName, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyName, Uint8List image)? addCompany,
    TResult? Function(String? companyName, Uint8List? image)? editCompany,
    TResult? Function()? removeCompany,
  }) {
    return addCompany?.call(companyName, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyName, Uint8List image)? addCompany,
    TResult Function(String? companyName, Uint8List? image)? editCompany,
    TResult Function()? removeCompany,
    required TResult orElse(),
  }) {
    if (addCompany != null) {
      return addCompany(companyName, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_EditCompany value) editCompany,
    required TResult Function(_RemoveCompany value) removeCompany,
  }) {
    return addCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCompany value)? addCompany,
    TResult? Function(_EditCompany value)? editCompany,
    TResult? Function(_RemoveCompany value)? removeCompany,
  }) {
    return addCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_EditCompany value)? editCompany,
    TResult Function(_RemoveCompany value)? removeCompany,
    required TResult orElse(),
  }) {
    if (addCompany != null) {
      return addCompany(this);
    }
    return orElse();
  }
}

abstract class _AddCompany implements AddCompanyEvent {
  const factory _AddCompany(
      {required final String companyName,
      required final Uint8List image}) = _$AddCompanyImpl;

  String get companyName;
  Uint8List get image;

  /// Create a copy of AddCompanyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCompanyImplCopyWith<_$AddCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditCompanyImplCopyWith<$Res> {
  factory _$$EditCompanyImplCopyWith(
          _$EditCompanyImpl value, $Res Function(_$EditCompanyImpl) then) =
      __$$EditCompanyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? companyName, Uint8List? image});
}

/// @nodoc
class __$$EditCompanyImplCopyWithImpl<$Res>
    extends _$AddCompanyEventCopyWithImpl<$Res, _$EditCompanyImpl>
    implements _$$EditCompanyImplCopyWith<$Res> {
  __$$EditCompanyImplCopyWithImpl(
      _$EditCompanyImpl _value, $Res Function(_$EditCompanyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCompanyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? image = freezed,
  }) {
    return _then(_$EditCompanyImpl(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$EditCompanyImpl implements _EditCompany {
  const _$EditCompanyImpl({this.companyName, this.image});

  @override
  final String? companyName;
  @override
  final Uint8List? image;

  @override
  String toString() {
    return 'AddCompanyEvent.editCompany(companyName: $companyName, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCompanyImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, companyName, const DeepCollectionEquality().hash(image));

  /// Create a copy of AddCompanyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCompanyImplCopyWith<_$EditCompanyImpl> get copyWith =>
      __$$EditCompanyImplCopyWithImpl<_$EditCompanyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyName, Uint8List image) addCompany,
    required TResult Function(String? companyName, Uint8List? image)
        editCompany,
    required TResult Function() removeCompany,
  }) {
    return editCompany(companyName, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyName, Uint8List image)? addCompany,
    TResult? Function(String? companyName, Uint8List? image)? editCompany,
    TResult? Function()? removeCompany,
  }) {
    return editCompany?.call(companyName, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyName, Uint8List image)? addCompany,
    TResult Function(String? companyName, Uint8List? image)? editCompany,
    TResult Function()? removeCompany,
    required TResult orElse(),
  }) {
    if (editCompany != null) {
      return editCompany(companyName, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_EditCompany value) editCompany,
    required TResult Function(_RemoveCompany value) removeCompany,
  }) {
    return editCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCompany value)? addCompany,
    TResult? Function(_EditCompany value)? editCompany,
    TResult? Function(_RemoveCompany value)? removeCompany,
  }) {
    return editCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_EditCompany value)? editCompany,
    TResult Function(_RemoveCompany value)? removeCompany,
    required TResult orElse(),
  }) {
    if (editCompany != null) {
      return editCompany(this);
    }
    return orElse();
  }
}

abstract class _EditCompany implements AddCompanyEvent {
  const factory _EditCompany(
      {final String? companyName, final Uint8List? image}) = _$EditCompanyImpl;

  String? get companyName;
  Uint8List? get image;

  /// Create a copy of AddCompanyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditCompanyImplCopyWith<_$EditCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCompanyImplCopyWith<$Res> {
  factory _$$RemoveCompanyImplCopyWith(
          _$RemoveCompanyImpl value, $Res Function(_$RemoveCompanyImpl) then) =
      __$$RemoveCompanyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveCompanyImplCopyWithImpl<$Res>
    extends _$AddCompanyEventCopyWithImpl<$Res, _$RemoveCompanyImpl>
    implements _$$RemoveCompanyImplCopyWith<$Res> {
  __$$RemoveCompanyImplCopyWithImpl(
      _$RemoveCompanyImpl _value, $Res Function(_$RemoveCompanyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCompanyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveCompanyImpl implements _RemoveCompany {
  const _$RemoveCompanyImpl();

  @override
  String toString() {
    return 'AddCompanyEvent.removeCompany()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveCompanyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyName, Uint8List image) addCompany,
    required TResult Function(String? companyName, Uint8List? image)
        editCompany,
    required TResult Function() removeCompany,
  }) {
    return removeCompany();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyName, Uint8List image)? addCompany,
    TResult? Function(String? companyName, Uint8List? image)? editCompany,
    TResult? Function()? removeCompany,
  }) {
    return removeCompany?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyName, Uint8List image)? addCompany,
    TResult Function(String? companyName, Uint8List? image)? editCompany,
    TResult Function()? removeCompany,
    required TResult orElse(),
  }) {
    if (removeCompany != null) {
      return removeCompany();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_EditCompany value) editCompany,
    required TResult Function(_RemoveCompany value) removeCompany,
  }) {
    return removeCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCompany value)? addCompany,
    TResult? Function(_EditCompany value)? editCompany,
    TResult? Function(_RemoveCompany value)? removeCompany,
  }) {
    return removeCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_EditCompany value)? editCompany,
    TResult Function(_RemoveCompany value)? removeCompany,
    required TResult orElse(),
  }) {
    if (removeCompany != null) {
      return removeCompany(this);
    }
    return orElse();
  }
}

abstract class _RemoveCompany implements AddCompanyEvent {
  const factory _RemoveCompany() = _$RemoveCompanyImpl;
}
