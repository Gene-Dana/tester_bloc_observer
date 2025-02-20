import 'package:bloc/bloc.dart';
import 'package:my_package_with_bloc/src/bloc/tester_bloc.dart';
import 'package:my_package_with_bloc/src/client_bloc_observer.dart';

/// {@template my_package_with_bloc}
/// My new Flutter package
/// {@endtemplate}
class MyPackageWithBloc {
  /// {@macro my_package_with_bloc}
  MyPackageWithBloc() {
    Bloc.observer = ClientBlocObserver();
  }

  final testBloc = TesterBloc();

  Future<bool> getData() async {
    Future.delayed(Duration(seconds: 1));
    return testBloc.state.isValid;
  }

  Future<void> updateData() async {
    Future.delayed(Duration(seconds: 1));
    return testBloc.add(SampleUpdateEvent());
  }
}
