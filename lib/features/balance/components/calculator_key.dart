import 'package:flutter/material.dart';

class CalculatorKey extends StatelessWidget {
  const CalculatorKey({required this.label, required this.onTap, super.key});

  final String label;
  final void Function(String value) onTap;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black54,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      onPressed: () {
        onTap(label);
      },
      child: Text(label),
    );
  }
}
