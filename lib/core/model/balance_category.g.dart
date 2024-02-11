// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BalanceCategoryImpl _$$BalanceCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$BalanceCategoryImpl(
      id: json['id'] as int,
      categoryName: json['categoryName'] as String,
      balanceType: $enumDecode(_$BalanceTypeEnumMap, json['balanceType']),
    );

Map<String, dynamic> _$$BalanceCategoryImplToJson(
        _$BalanceCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryName': instance.categoryName,
      'balanceType': _$BalanceTypeEnumMap[instance.balanceType]!,
    };

const _$BalanceTypeEnumMap = {
  BalanceType.expense: 'expense',
  BalanceType.income: 'income',
};
