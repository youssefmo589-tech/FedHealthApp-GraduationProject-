import 'package:fedhealth_graduationproject/Features/LayoutView/domain/Usecases/GetPredectionUsecase.dart';
import 'package:fedhealth_graduationproject/Features/LayoutView/domain/repository/RepositoryInterFace.dart';
import 'package:get_it/get_it.dart';

import '../../Features/LayoutView/data layer/dataSource/RemoteDataSource/GetPredectionData.dart';
import '../../Features/LayoutView/data layer/repositoryImp/RepositoryImp.dart';

final getit = GetIt.instance;

void SettingDI() {
  getit.registerLazySingleton<RepositoryInterface>(
    () => RepositoryImp(GetpredectionData()),
  );
  getit.registerLazySingleton<GetPredectionUsecase>(
    () => GetPredectionUsecase(getit<RepositoryInterface>()),
  );
}
