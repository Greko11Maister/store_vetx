import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  /*
  {
  "id": "1098832946_CI",
  "balance": 0.0,
  "document": "1098832946",
  "status": "Open",
  "documentType": "CI",
  "creditLimit": 500.0,
  "updatedAt": "2021-05-25T21:30:51.2347Z",
  "createdAt": "2021-05-25T21:30:51.1878737Z",
  "description": "",
  "availableCredit": 0.0,
  "preAuthorizedCredit": 0.0,
  "email": "greko11maister@gmail.com",
  "tolerance": 1.0,
  "availableBalance": 0.0
}
   */
  final String id;
  final double balance;
  final String status;
  final String document;
  final String documentType;
  final String email;
  final double creditLimit;
  final String description;
  final double tolerance;
  final DateTime createdAt;

  UserEntity(
      {this.id,
      this.balance,
      this.status,
      this.document,
      this.documentType,
      this.email,
      this.creditLimit,
      this.description,
      this.tolerance,
      this.createdAt});

  @override
  List<Object> get props => [
        this.id,
        this.balance,
        this.status,
        this.document,
        this.documentType,
        this.email,
        this.creditLimit,
        this.description,
        this.tolerance,
        this.createdAt
      ];
}
