abstract class GeneralException implements Exception {
  GeneralException({this.message = '', this.errors});

  String message;
  Map<String, String>? errors;
  String get displayMessage => (errors != null && errors!.isNotEmpty)
      ? errors!.values.join('\n')
      : message;

  @override
  String toString() {
    return message;
  }
}
