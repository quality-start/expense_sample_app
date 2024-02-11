import 'package:expenses_app/core/components/calculator_key.dart';
import 'package:flutter/material.dart';

class CalCulator extends StatelessWidget {
  const CalCulator({
    required this.onChange,
    required this.amount,
    super.key,
  });
  final void Function(String key) onChange;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(child: Text('金額')),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: ColoredBox(
                      color: Colors.black12,
                      child: Text(
                        '$amount',
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          childAspectRatio: 1.4,
          padding: MediaQuery.of(context).size.height < 700
              ? const EdgeInsets.fromLTRB(30, 10, 30, 10)
              : const EdgeInsets.all(5),
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          children: <String>['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '00', 'DEL']
              .map(
                (e) => GridTile(
                  child: CalculatorKey(
                    label: e,
                    onTap: onChange,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
