// ignore: unused_import
import 'package:expenses_app/core/model/balance_category.dart';
import 'package:expenses_app/core/model/balance_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance.freezed.dart';
part 'balance.g.dart';

/// お小遣い帳の出納を表現するモデル
@freezed
class Balance with _$Balance {
  const factory Balance({
    @Default(0) int id,
    // 金額
    @Default(0) int amount,
    // 経費や収入の区分
    // 初期値は未選択を表現すべくnullable
    BalanceCategory? category, //
    // 支出か収入か
    @Default(BalanceType.expense) BalanceType type,
    // 発生日時
    DateTime? createdAt,
  }) = _Balance;
  factory Balance.fromJson(Map<String, dynamic> json) => _$BalanceFromJson(json);
}
