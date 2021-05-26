import 'package:store_vtex/src/features/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
     String id,
     double balance,
     String status,
    String document,
    String documentType,
    String email,
    double creditLimit,
    String description,
    double tolerance,
    DateTime createdAt
  }) : super(
    id: id,
            balance: balance,
            status: status,
            document: document,
            documentType: documentType,
            email: email,
            creditLimit: creditLimit,
            description: description,
            tolerance: tolerance);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
        balance: json["balance"],
        status: json["status"],
        document: json["document"],
        documentType: json["documentType"],
        email: json["email"],
        creditLimit: json["creditLimit"],
        description: json["description"], 
        tolerance: json["tolerance"],
        createdAt: DateTime.parse(json["createdAt"])
    );
  }
}
