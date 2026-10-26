import 'package:fedhealth_graduationproject/Features/LayoutView/domain/repository/RepositoryInterFace.dart';

import '../../data layer/Models/PredectionRequestModel.dart';
import '../../data layer/Models/PredectionResponseModel.dart';

class GetPredectionUsecase {
  final RepositoryInterface _repositoryInterface;

  GetPredectionUsecase(this._repositoryInterface);

  Future<PredectionResponseModel> call(
      PredectionRequestModel predectionRequest) async
  {
    return await _repositoryInterface.getPrediction(predectionRequest);
  }

}
