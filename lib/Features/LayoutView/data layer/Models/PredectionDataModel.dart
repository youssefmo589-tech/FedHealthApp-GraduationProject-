import 'package:fedhealth_graduationproject/Features/LayoutView/data%20layer/Models/AdminModel.dart';
import 'package:fedhealth_graduationproject/Features/LayoutView/domain/Entities/PredectionDataEntity.dart';

import 'HospitalModel.dart';

class PredectionDataModel extends PredectiondataEntity {
  PredectionDataModel({
    required super.age,
    required super.operationYear,
    required super.positiveNodes,
    required super.outcome,
    required super.confidence,
    required super.createdBy,
    required super.hospital,
    required super.id,
  });

  factory PredectionDataModel.fromJson(Map<String, dynamic> json) {
    return PredectionDataModel(
      age: json['age'],
      operationYear: json['operationYear'],
      positiveNodes: json['positiveNodes'],
      outcome: json['outcome'],
      confidence: json['confidence'],
      createdBy: AdminModel.fromJson(json['createdBy']),
      hospital: HospitalModel.fromJson(json['hospital']),
      id: '_id',
    );
  }
}
