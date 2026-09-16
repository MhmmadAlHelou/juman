import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ewan/features/my_properties/data/model/my_property_model.dart';
import 'package:ewan/features/my_properties/data/my_properties_repository.dart';
import 'package:ewan/features/my_properties/data/my_properties_result.dart';
import 'package:ewan/features/my_properties/data/property_status_filter.dart';

part 'my_properties_state.dart';

class MyPropertiesCubit extends Cubit<MyPropertiesState> {
  MyPropertiesCubit(this._repository) : super(const MyPropertiesState());

  final MyPropertiesRepository _repository;

  Future<void> fetchProperties() async {
    emit(state.copyWith(isLoading: true, clearError: true));
    try {
      final MyPropertiesResult result = await _repository.fetchMyProperties();
      emit(state.copyWith(allItems: result.items, isLoading: false));
    } on Exception catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  void changeFilter(PropertyStatusFilter filter) {
    emit(state.copyWith(filter: filter));
  }

  Future<void> deleteProperty(String id) async {
    emit(state.copyWith(deletingId: id));
    try {
      await _repository.deleteProperty(id);
      final List<MyPropertyModel> updated = state.allItems
          .where((MyPropertyModel i) => i.id != id)
          .toList();
      emit(state.copyWith(allItems: updated, clearDeletingId: true));
    } on Exception catch (e) {
      emit(state.copyWith(clearDeletingId: true, errorMessage: e.toString()));
    }
  }
}
