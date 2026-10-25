import '../../domain/Entities/PredectionResponse.dart';
import 'PredectionDataModel.dart';

class PredectionResponseModel extends PredectionResponseEntity {
  PredectionResponseModel({
    required super.success,
    required super.result,
    required super.predectionDataList,
  });

  factory PredectionResponseModel.fromJson(Map<String, dynamic> json) {
    return PredectionResponseModel(
      success: json['success'],
      result: json['result'],
      predectionDataList: (json['data'] as List)
          .map((item) => PredectionDataModel.fromJson(item))
          .toList(),
    );
  }
}
