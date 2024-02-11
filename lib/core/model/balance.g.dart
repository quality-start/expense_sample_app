// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BalanceImpl _$$BalanceImplFromJson(Map<String, dynamic> json) =>
    _$BalanceImpl(
      id: json['id'] as int? ?? 0,
      amount: json['amount'] as int? ?? 0,
      category: json['category'] == null
          ? null
          : BalanceCategory.fromJson(json['category'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$BalanceTypeEnumMap, json['type']) ??
          BalanceType.expense,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$BalanceImplToJson(_$BalanceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'category': instance.category,
      'type': _$BalanceTypeEnumMap[instance.type]!,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$BalanceTypeEnumMap = {
  BalanceType.expense: 'expense',
  BalanceType.income: 'income',
};
