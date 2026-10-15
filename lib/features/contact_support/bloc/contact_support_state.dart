part of 'contact_support_cubit.dart';

enum ContactSupportStatus { loading, success, failure }

class ContactSupportState extends Equatable {
  final ContactSupportStatus status;
  final List<ContactOptionModel> options;
  final String? errorMessage;

  const ContactSupportState({
    this.status = ContactSupportStatus.loading,
    this.options = const [],
    this.errorMessage,
  });

  ContactOptionModel? optionOf(String type) {
    for (final o in options) {
      if (o.type == type) return o;
    }
    return null;
  }

  @override
  List<Object?> get props => [status, options, errorMessage];
}
