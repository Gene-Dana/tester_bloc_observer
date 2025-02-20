import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_repository/my_repository.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({required MyRepository repo})
      : _repo = repo,
        super(AppState());

  final MyRepository _repo;

  Future<void> getData() async {
    final data = await _repo.getData();

    emit(state.copyWith(isValid: data));
  }

  Future<void> updateData() async {
    await _repo.updateData();
    getData();
  }
}
