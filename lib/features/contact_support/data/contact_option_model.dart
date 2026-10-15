import 'package:equatable/equatable.dart';

class ContactFallbackAction extends Equatable {
  final String type; // call | cancel
  final String label;
  final String? url;

  const ContactFallbackAction({
    required this.type,
    required this.label,
    this.url,
  });

  factory ContactFallbackAction.fromJson(Map<String, dynamic> json) =>
      ContactFallbackAction(
        type: json['type'] as String? ?? '',
        label: json['label'] as String? ?? '',
        url: json['url'] as String?,
      );

  @override
  List<Object?> get props => [type, label, url];
}

class ContactFallback extends Equatable {
  final String message;
  final List<ContactFallbackAction> actions;

  const ContactFallback({required this.message, required this.actions});

  factory ContactFallback.fromJson(Map<String, dynamic> json) =>
      ContactFallback(
        message: json['message'] as String? ?? '',
        actions: (json['actions'] as List? ?? [])
            .map(
              (e) => ContactFallbackAction.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );

  @override
  List<Object?> get props => [message, actions];
}

class ContactOptionModel extends Equatable {
  final String type; // whatsapp | phone
  final String label;
  final String value;
  final String url;
  final String? webUrl;
  final ContactFallback? fallback;

  const ContactOptionModel({
    required this.type,
    required this.label,
    required this.value,
    required this.url,
    this.webUrl,
    this.fallback,
  });

  factory ContactOptionModel.fromJson(Map<String, dynamic> json) =>
      ContactOptionModel(
        type: json['type'] as String? ?? '',
        label: json['label'] as String? ?? '',
        value: json['value'] as String? ?? '',
        url: json['url'] as String? ?? '',
        webUrl: json['web_url'] as String?,
        fallback: json['fallback'] == null
            ? null
            : ContactFallback.fromJson(
                json['fallback'] as Map<String, dynamic>,
              ),
      );

  @override
  List<Object?> get props => [type, label, value, url, webUrl, fallback];
}
