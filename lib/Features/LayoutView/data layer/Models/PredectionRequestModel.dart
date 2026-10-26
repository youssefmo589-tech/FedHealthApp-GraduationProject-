import 'package:fedhealth_graduationproject/Features/LayoutView/domain/Entities/PredectionRequestEntity.dart';

class PredectionRequestModel extends PredectionRequestEntity {
  PredectionRequestModel({
    required super.year,
    required super.nodes,
    required super.age,
  });

  Map<String, dynamic> tojson() {
    return {'operationYear': year, 'PositiveNodes': nodes, 'age': age};
  }
}
