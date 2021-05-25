import 'package:store_vtex/src/features/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    String document,
    String documentType,
    String email,
    String creditLimit,
    String description,
    String tolerance,
  }) : super(
            document: document,
            documentType: documentType,
            email: email,
            creditLimit: creditLimit,
            description: description,
            tolerance: tolerance);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        document: json["document"],
        documentType: json["documentType"],
        email: json["email"],
        creditLimit: json["creditLimit"],
        description: json["description"],
        tolerance: json["tolerance"]);
  }
}
