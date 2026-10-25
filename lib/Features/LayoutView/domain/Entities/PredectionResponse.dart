import 'package:fedhealth_graduationproject/Features/LayoutView/domain/Entities/PredectionDataEntity.dart';

class PredectionResponseEntity {
  final bool success;

  final int result;

  final List<PredectiondataEntity> predectionDataList;

  PredectionResponseEntity({
    required this.success,
    required this.result,
    required this.predectionDataList,
  });
}
