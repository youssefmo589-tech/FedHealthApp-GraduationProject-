import 'package:dio/dio.dart';
import 'package:fedhealth_graduationproject/Features/LayoutView/data%20layer/Models/PredectionResponseModel.dart';

import '../../../../../core/AppConstant/AppConstant.dart';
import '../../../../../core/EndPoints/EndPoints.dart';
import '../../Models/PredectionRequestModel.dart';

class GetpredectionData {
  final dio = Dio(BaseOptions(baseUrl: AppConstant.baseUrl));

  Future<PredectionResponseModel> getPredect(
    PredectionRequestModel predectionRequest,
  ) async {
    final response = await dio.post(
      EndPoints.predectEndPoint,
      data: {
        'age': predectionRequest.age,
        'operationYear': predectionRequest.year,
        'positiveNodes': predectionRequest.nodes,
      },
    );

    final data = response.data;

    final predectiondata = PredectionResponseModel.fromJson(
      Map<String, dynamic>.from(data),
    );
    return predectiondata;
  }
}
