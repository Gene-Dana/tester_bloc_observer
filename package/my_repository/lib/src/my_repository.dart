import 'package:my_package_with_bloc/my_package_with_bloc.dart';

enum SampleStatus { truee, falsee }

/// {@template my_repository}
/// My new Flutter package
/// {@endtemplate}
class MyRepository {
  /// {@macro my_repository}
  const MyRepository({required MyPackageWithBloc package}) : _package = package;

  final MyPackageWithBloc _package;

  Future<SampleStatus> getData() async {
    final data = await _package.getData();
    if (data) {
      return SampleStatus.truee;
    } else {
      return SampleStatus.falsee;
    }
  }

  Future<void> updateData() async {
    await _package.updateData();
  }
}
