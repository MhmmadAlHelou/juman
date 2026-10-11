import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/profile/data/legal_repository.dart';
import 'package:ewan/features/profile/data/models/legal_content_model.dart';

part 'legal_state.dart';

class LegalCubit extends Cubit<LegalState> {
  LegalCubit({required LegalRepository repository})
    : _repository = repository,
      super(const LegalState());

  final LegalRepository _repository;

  Future<void> loadLegalContent() async {
    emit(state.copyWith(status: LegalStatus.loading, errorMessage: null));

    try {
      final results = await Future.wait([
        _repository.getTermsOfUse(),
        _repository.getPrivacyPolicy(),
      ]);

      emit(
        state.copyWith(
          status: LegalStatus.success,
          terms: results[0],
          privacy: results[1],
          errorMessage: null,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(status: LegalStatus.failure, errorMessage: e.toString()),
      );
    }
  }

  // Future<void> loadTermsOfUse() async {
  //   emit(state.copyWith(status: LegalStatus.loading, errorMessage: null));

  //   try {
  //     final LegalContentModel data = await _repository.getTermsOfUse();

  //     emit(
  //       state.copyWith(
  //         status: LegalStatus.success,
  //         data: data,
  //         errorMessage: null,
  //       ),
  //     );
  //   } on BackendException catch (e) {
  //     emit(
  //       state.copyWith(status: LegalStatus.failure, errorMessage: e.toString()),
  //     );
  //   }
  // }
}
