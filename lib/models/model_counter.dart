import '../interfaces/interface_model.dart';

class ModelCounter implements Model {
  const ModelCounter({required this.counter});
  final int counter;
  @override
  Map<String, dynamic> toJson() {
    return {'counter': counter};
  }

  @override
  ModelCounter copyWith({int? counter}) {
    return ModelCounter(counter: counter ?? this.counter);
  }

  @override
  String toString() {
    return 'My counter is $counter';
  }
}
