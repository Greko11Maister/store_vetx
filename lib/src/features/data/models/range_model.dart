import 'package:store_vtex/src/features/domain/entities/range_entiity.dart';

class RangeModel extends RangeEntity {
RangeModel({
  int total,
  int from,
  int to
}) : super(
  total: total,
  from: from,
  to: to
);

factory RangeModel.fromJson(Map<String, dynamic> json) {
  return RangeModel(
    total: json["total"],
    from: json["from"],
    to: json["to"]
  );
}
}