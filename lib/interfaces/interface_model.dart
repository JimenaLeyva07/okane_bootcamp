abstract class Model {
  const Model();

  Map<String, dynamic> toJson() {
    Map<String, dynamic> tmpJson = <String, dynamic>{};
    return tmpJson;
  }

  Model.fromJson(Map<String, dynamic> json);

  Model copyWith();

  @override
  String toString();
}
