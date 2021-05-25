import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String document;
  final String documentType;
  final String email;
  final String creditLimit;
  final String description;
  final String tolerance;

  UserEntity({this.document, this.documentType, this.email, this.creditLimit, this.description, this.tolerance});

  @override
  List<Object> get props =>
      [this.document, this.documentType, this.email, this.creditLimit, this.description, this.tolerance];
}
