import 'package:fedhealth_graduationproject/Features/LayoutView/domain/Entities/HospitalEntity.dart';

class HospitalModel extends HospitalEntity {
  HospitalModel({
    required super.id,
    required super.participantNumber,
    required super.code,
    required super.name,
    required super.status,
  });

  factory HospitalModel.fromJson(Map<String, dynamic> json) {
    return HospitalModel(
      id: json['_id'],
      participantNumber: json['participantNumber'],
      code: json['code'],
      name: json['name'],
      status: json['status'],
    );
  }
}
