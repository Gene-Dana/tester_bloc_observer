part of 'tester_bloc.dart';

final class TesterState extends Equatable {
  const TesterState({
    this.isValid = false,
  });

  final bool isValid;

  @override
  List<Object?> get props => [
        isValid,
      ];

  TesterState copyWith({
    bool? isValid,
  }) {
    return TesterState(
      isValid: isValid ?? this.isValid,
    );
  }
}
