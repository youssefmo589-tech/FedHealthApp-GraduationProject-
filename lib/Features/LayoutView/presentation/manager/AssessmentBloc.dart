import 'package:equatable/equatable.dart';
import 'package:fedhealth_graduationproject/Features/LayoutView/domain/Usecases/GetPredectionUsecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/DI/SettingDI.dart';
import '../../data layer/Models/PredectionRequestModel.dart';
import '../../data layer/Models/PredectionResponseModel.dart';

part 'AssessmentEvent.dart';
part 'AssessmentState.dart';

class AssessmentBloc extends Bloc<AssessmentEvent, AssessmentState> {
  final GetPredectionUsecase _predictiondata;

  AssessmentBloc()
    : _predictiondata = getit<GetPredectionUsecase>(),
      super(LoadingState()) {
    on<getPrediction>(_getpredictiondata);
  }

  Future<void> _getpredictiondata(
    getPrediction event,
    Emitter<AssessmentState> emit,
  ) async {
    emit(LoadingState());

    try {
      final data = await _predictiondata.call(event.predectionRequest);
      emit(SuccessState(data));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }
}
