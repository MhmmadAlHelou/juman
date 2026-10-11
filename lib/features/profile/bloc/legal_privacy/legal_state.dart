part of 'legal_cubit.dart';

enum LegalStatus { initial, loading, success, failure }

class LegalState extends Equatable {
  const LegalState({
    this.status = LegalStatus.initial,
    this.terms,
    this.privacy,
    this.errorMessage,
  });

  final LegalStatus status;
  final LegalContentModel? terms;
  final LegalContentModel? privacy;
  final String? errorMessage;

  bool get isLoading => status == LegalStatus.loading;

  LegalState copyWith({
    LegalStatus? status,
    LegalContentModel? terms,
    LegalContentModel? privacy,
    String? errorMessage,
  }) {
    return LegalState(
      status: status ?? this.status,
      terms: terms ?? this.terms,
      privacy: privacy ?? this.privacy,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, terms, privacy, errorMessage];
}
