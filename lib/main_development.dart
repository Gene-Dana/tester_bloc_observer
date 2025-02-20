import 'package:flutter/material.dart';
import 'package:my_package_with_bloc/my_package_with_bloc.dart';
import 'package:my_repository/my_repository.dart';
import 'package:tester_bloc_observer/app/app.dart';
import 'package:tester_bloc_observer/bootstrap.dart';

void main() {
  final package = MyPackageWithBloc();
  final repo = MyRepository(package: package);
  bootstrap(
    () => App(repo: repo),
  );
}
