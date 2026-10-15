import 'package:equatable/equatable.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/contact_support/data/contact_option_model.dart';
import 'package:ewan/features/contact_support/data/contact_repository.dart';

part 'contact_support_state.dart';

class ContactSupportCubit extends Cubit<ContactSupportState> {
  final ContactRepository _repository;
  ContactSupportCubit(this._repository) : super(const ContactSupportState());

  Future<void> load() async {
    emit(const ContactSupportState());
    try {
      final options = await _repository.getContactOptions();
      emit(
        ContactSupportState(
          status: ContactSupportStatus.success,
          options: options,
        ),
      );
    } on BackendException catch (e) {
      emit(
        ContactSupportState(
          status: ContactSupportStatus.failure,
          errorMessage: e.message,
        ),
      );
    } catch (_) {
      emit(const ContactSupportState(status: ContactSupportStatus.failure));
    }
  }
}
