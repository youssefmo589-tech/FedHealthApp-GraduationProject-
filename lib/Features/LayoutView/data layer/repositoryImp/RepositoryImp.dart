import 'package:fedhealth_graduationproject/Features/LayoutView/data%20layer/Models/PredectionRequestModel.dart';
import 'package:fedhealth_graduationproject/Features/LayoutView/data%20layer/Models/PredectionResponseModel.dart';
import 'package:fedhealth_graduationproject/Features/LayoutView/domain/repository/RepositoryInterFace.dart';

import '../dataSource/RemoteDataSource/GetPredectionData.dart';

class RepositoryImp implements RepositoryInterface {
  GetpredectionData predectiondata;

  RepositoryImp(this.predectiondata);

  @override
  Future<PredectionResponseModel> getPrediction(
    PredectionRequestModel predectionRequest,
  ) async {
    final data = await predectiondata.getPredect(predectionRequest);

    if (data.success == false) {
      throw Exception('prediction request failed');
    }

    return data;
  }
}
