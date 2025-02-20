part of 'tester_bloc.dart';

@immutable
sealed class TesterEvent {}

/// this is a sample event
class SampleUpdateEvent extends TesterEvent {}
