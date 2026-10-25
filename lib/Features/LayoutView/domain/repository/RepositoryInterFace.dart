import 'package:fedhealth_graduationproject/Features/LayoutView/data%20layer/Models/PredectionResponseModel.dart';

import '../../data layer/Models/PredectionRequestModel.dart';

abstract class RepositoryInterface {

  Future<List<PredectionResponseModel>> getPredection(
      PredectionRequestModel predectionRequest);


}