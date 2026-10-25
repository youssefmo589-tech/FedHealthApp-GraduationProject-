import 'package:fedhealth_graduationproject/Features/LayoutView/domain/Entities/AdminEntity.dart';

import 'HospitalEntity.dart';

class PredectiondataEntity {
  final String id;

  final int age;

  final int operationYear;

  final int positiveNodes;

  final String outcome;

  final double confidence;

  final AdminEntity createdBy;

  final HospitalEntity hospital;

  PredectiondataEntity({
    required this.id,
    required this.age,
    required this.operationYear,
    required this.positiveNodes,
    required this.outcome,
    required this.confidence,
    required this.createdBy,
    required this.hospital,
  });
}
