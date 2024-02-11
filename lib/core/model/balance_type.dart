import 'package:json_annotation/json_annotation.dart';

/// 出納区分
/// 出納を英語で表す単語はいくつかあるけど `balance` が一番しっくりくる
enum BalanceType {
  @JsonValue('expense')
  expense('支出'),

  @JsonValue('income')
  income('収入');

  const BalanceType(this.name);
  final String name;
}
