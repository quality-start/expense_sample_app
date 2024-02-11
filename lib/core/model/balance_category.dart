import 'package:expenses_app/core/model/balance_type.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance_category.freezed.dart';
part 'balance_category.g.dart';

/// 交際費・通信費等の出納を区分けするカテゴリ
@freezed
class BalanceCategory with _$BalanceCategory {
  const factory BalanceCategory({
    /// カテゴリID
    required int id,

    /// カテゴリ名
    required String categoryName,

    /// 支出 or 収入に属するカテゴリ
    required BalanceType balanceType,
  }) = _BalanceCategory;
  factory BalanceCategory.fromJson(Map<String, dynamic> json) => _$BalanceCategoryFromJson(json);
}
