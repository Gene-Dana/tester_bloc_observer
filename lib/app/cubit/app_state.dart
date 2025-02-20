part of 'app_cubit.dart';

final class AppState extends Equatable {
  const AppState({
    this.isValid = SampleStatus.falsee,
  });

  final SampleStatus isValid;

  @override
  List<Object?> get props => [
        isValid,
      ];

  AppState copyWith({
    SampleStatus? isValid,
  }) {
    return AppState(
      isValid: isValid ?? this.isValid,
    );
  }
}
