import 'dart:async';

import 'package:okane_2023/interfaces/interface_controller.dart';
import 'package:okane_2023/models/model_counter.dart';

class ControllerCounter extends Controller {
  final _counterController = StreamController<ModelCounter>.broadcast();
  Stream<ModelCounter> get streamController => _counterController.stream;

  ModelCounter _modelCounter = const ModelCounter(counter: 0);

  ModelCounter get modelCounter => _modelCounter;

  void incrementCounter() {
    _modelCounter = _modelCounter.copyWith(counter: _modelCounter.counter + 1);
    _counterController.add(_modelCounter);
  }

  void dispose() {
    _counterController.close();
  }
}

final ControllerCounter controllerCounter = ControllerCounter();
