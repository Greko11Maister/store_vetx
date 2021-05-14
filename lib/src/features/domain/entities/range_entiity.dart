import 'package:equatable/equatable.dart';
class RangeEntity extends Equatable {
  final int total;
  final int from;
  final int to;

  RangeEntity({this.total, this.from, this.to});

  @override
  List<Object> get props => [this.total, this.from, this.to];

}