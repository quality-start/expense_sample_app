import 'package:expenses_app/core/components/calculator.dart';
import 'package:expenses_app/core/model/balance.dart';
import 'package:expenses_app/core/model/balance_category.dart';
import 'package:expenses_app/core/model/balance_type.dart';
import 'package:expenses_app/util/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const category = [
  BalanceCategory(id: 1, categoryName: '給料', balanceType: BalanceType.income),
  BalanceCategory(id: 2, categoryName: 'お小遣い', balanceType: BalanceType.income),
  BalanceCategory(id: 3, categoryName: '賞与', balanceType: BalanceType.income),
  BalanceCategory(id: 4, categoryName: '副業', balanceType: BalanceType.income),
];

class InputBalanceWidget extends HookConsumerWidget {
  const InputBalanceWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final balance = useState(Balance(createdAt: DateTime.now()));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: CupertinoSegmentedControl(
                          children: const {
                            BalanceType.expense: SegmentControlItem(type: BalanceType.expense),
                            BalanceType.income: SegmentControlItem(type: BalanceType.income),
                          },
                          groupValue: balance.value.type,
                          onValueChanged: (BalanceType type) => balance.value = balance.value.copyWith(type: type),
                        ),
                      ),
                      Row(
                        children: [
                          const Expanded(child: Text('日付')),
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    // 1日減らす
                                    balance.value = balance.value.copyWith(
                                      createdAt: balance.value.createdAt?.subtract(const Duration(days: 1)),
                                    );
                                  },
                                  icon: const Icon(Icons.arrow_back_ios),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    final selectedDate = await showDatePicker(
                                      context: context,
                                      initialDate: balance.value.createdAt,
                                      locale: const Locale('ja'),
                                      firstDate: DateTime.now().copyWith(day: 1, month: 1),
                                      lastDate: DateTime.now().copyWith(day: 12, month: 31),
                                    );
                                    if (selectedDate != null) {
                                      balance.value = balance.value.copyWith(createdAt: selectedDate);
                                    }
                                  },
                                  child: Text(
                                    balance.value.createdAt?.formatYMD() ?? '',
                                    style: Theme.of(context).textTheme.headlineSmall,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    balance.value = balance.value
                                        .copyWith(createdAt: balance.value.createdAt?.add(const Duration(days: 1)));
                                    // 1日追加
                                  },
                                  icon: const Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text('カテゴリ'),
                          const SizedBox(width: 16),
                          Flexible(
                            child: DropdownButton<BalanceCategory>(
                              value: balance.value.category,
                              items:
                                  category.map((e) => DropdownMenuItem(value: e, child: Text(e.categoryName))).toList(),
                              onChanged: (BalanceCategory? value) =>
                                  balance.value = balance.value.copyWith(category: value),
                            ),
                          ),
                        ],
                      ),
                      CalCulator(
                        amount: balance.value.amount,
                        onChange: (key) {
                          if (key == 'DEL') {
                            balance.value = balance.value.copyWith(amount: balance.value.amount ~/ 10);
                          } else {
                            balance.value = balance.value.copyWith(amount: balance.value.amount * 10 + int.parse(key));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () async {
                    if (balance.value.category == null) {
                      await showDialog<void>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text(
                            'カテゴリ未選択',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          content: const Text('カテゴリを選択してください。'),
                          actions: <Widget>[
                            FilledButton(
                              child: const Text('閉じる'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                      return;
                    }
                    //TODO: データを保存する処理を作る
                  },
                  child: Text(
                    '登録',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SegmentControlItem extends StatelessWidget {
  const SegmentControlItem({required this.type, super.key});

  final BalanceType type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          type.name,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
