import 'package:flutter/material.dart';
import 'package:okane_2023/models/model_counter.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    required this.modelCounter,
    super.key,
  });

  final ModelCounter modelCounter;

  @override
  Widget build(BuildContext context) {
    return Text(modelCounter.toString());
  }
}
