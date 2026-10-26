part of 'AssessmentBloc.dart';

class AssessmentEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class getPrediction extends AssessmentEvent {
  PredectionRequestModel predectionRequest;

  getPrediction(this.predectionRequest);

  @override
  List<Object> get props => [];
}
