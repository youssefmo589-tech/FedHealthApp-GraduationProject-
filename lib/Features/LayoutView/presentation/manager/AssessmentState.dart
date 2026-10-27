part of 'AssessmentBloc.dart';

class AssessmentState extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialState extends AssessmentState {
  @override
  List<Object> get props => [];
}

class SuccessState extends AssessmentState {
  final PredectionResponseModel predection;

  SuccessState(this.predection);

  @override
  List<Object> get props => [predection];
}

class ErrorState extends AssessmentState {
  final String message;

  ErrorState(this.message);

  @override
  List<Object> get props => [message];
}

class LoadingState extends AssessmentState {}
