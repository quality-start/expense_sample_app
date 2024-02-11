// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BalanceCategory _$BalanceCategoryFromJson(Map<String, dynamic> json) {
  return _BalanceCategory.fromJson(json);
}

/// @nodoc
mixin _$BalanceCategory {
  /// カテゴリID
  int get id => throw _privateConstructorUsedError;

  /// カテゴリ名
  String get categoryName => throw _privateConstructorUsedError;

  /// 支出 or 収入に属するカテゴリ
  BalanceType get balanceType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BalanceCategoryCopyWith<BalanceCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceCategoryCopyWith<$Res> {
  factory $BalanceCategoryCopyWith(
          BalanceCategory value, $Res Function(BalanceCategory) then) =
      _$BalanceCategoryCopyWithImpl<$Res, BalanceCategory>;
  @useResult
  $Res call({int id, String categoryName, BalanceType balanceType});
}

/// @nodoc
class _$BalanceCategoryCopyWithImpl<$Res, $Val extends BalanceCategory>
    implements $BalanceCategoryCopyWith<$Res> {
  _$BalanceCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? balanceType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      balanceType: null == balanceType
          ? _value.balanceType
          : balanceType // ignore: cast_nullable_to_non_nullable
              as BalanceType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BalanceCategoryImplCopyWith<$Res>
    implements $BalanceCategoryCopyWith<$Res> {
  factory _$$BalanceCategoryImplCopyWith(_$BalanceCategoryImpl value,
          $Res Function(_$BalanceCategoryImpl) then) =
      __$$BalanceCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String categoryName, BalanceType balanceType});
}

/// @nodoc
class __$$BalanceCategoryImplCopyWithImpl<$Res>
    extends _$BalanceCategoryCopyWithImpl<$Res, _$BalanceCategoryImpl>
    implements _$$BalanceCategoryImplCopyWith<$Res> {
  __$$BalanceCategoryImplCopyWithImpl(
      _$BalanceCategoryImpl _value, $Res Function(_$BalanceCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? balanceType = null,
  }) {
    return _then(_$BalanceCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      balanceType: null == balanceType
          ? _value.balanceType
          : balanceType // ignore: cast_nullable_to_non_nullable
              as BalanceType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BalanceCategoryImpl
    with DiagnosticableTreeMixin
    implements _BalanceCategory {
  const _$BalanceCategoryImpl(
      {required this.id,
      required this.categoryName,
      required this.balanceType});

  factory _$BalanceCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BalanceCategoryImplFromJson(json);

  /// カテゴリID
  @override
  final int id;

  /// カテゴリ名
  @override
  final String categoryName;

  /// 支出 or 収入に属するカテゴリ
  @override
  final BalanceType balanceType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BalanceCategory(id: $id, categoryName: $categoryName, balanceType: $balanceType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BalanceCategory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('categoryName', categoryName))
      ..add(DiagnosticsProperty('balanceType', balanceType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalanceCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.balanceType, balanceType) ||
                other.balanceType == balanceType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryName, balanceType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BalanceCategoryImplCopyWith<_$BalanceCategoryImpl> get copyWith =>
      __$$BalanceCategoryImplCopyWithImpl<_$BalanceCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BalanceCategoryImplToJson(
      this,
    );
  }
}

abstract class _BalanceCategory implements BalanceCategory {
  const factory _BalanceCategory(
      {required final int id,
      required final String categoryName,
      required final BalanceType balanceType}) = _$BalanceCategoryImpl;

  factory _BalanceCategory.fromJson(Map<String, dynamic> json) =
      _$BalanceCategoryImpl.fromJson;

  @override

  /// カテゴリID
  int get id;
  @override

  /// カテゴリ名
  String get categoryName;
  @override

  /// 支出 or 収入に属するカテゴリ
  BalanceType get balanceType;
  @override
  @JsonKey(ignore: true)
  _$$BalanceCategoryImplCopyWith<_$BalanceCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
