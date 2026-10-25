import 'package:fedhealth_graduationproject/Features/LayoutView/domain/Entities/AdminEntity.dart';

class AdminModel extends AdminEntity {
  AdminModel({
    required super.name,
    required super.email,
    required super.role,
    required super.id,
  });

  factory AdminModel.fromJson(Map<String, dynamic> json) {
    return AdminModel(
      name: json['name'],
      email: json['email'],
      role: json['role'],
      id: json['_id'],
    );
  }
}
