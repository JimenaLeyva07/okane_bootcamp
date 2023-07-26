import 'package:flutter/material.dart';

import '../../controllers/controller_counter.dart';
import '../../models/model_counter.dart';
import 'counter_widget.dart';

class CounterControllerWidget extends StatelessWidget {
  const CounterControllerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ModelCounter>(
      stream: controllerCounter.streamController,
      builder: (context, snapshot) {
        return CounterWidget(modelCounter: controllerCounter.modelCounter);
      },
    );
  }
}
