import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'tester_event.dart';
part 'tester_state.dart';

class TesterBloc extends Bloc<TesterEvent, TesterState> {
  TesterBloc() : super(TesterState()) {
    on<SampleUpdateEvent>((event, emit) {
      _onSampleUpdateEvent();
    });
  }

  void _onSampleUpdateEvent() {
    emit(state.copyWith(isValid: !state.isValid));
  }
}
