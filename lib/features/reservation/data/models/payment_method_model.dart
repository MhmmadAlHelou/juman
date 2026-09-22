class PaymentMethodModel {
  const PaymentMethodModel({
    required this.id,
    required this.name,
    required this.instruction,
    required this.image,
    required this.requiresReceipt,
  });

  final String id;
  final String name;
  final String instruction;
  final String image;
  final bool requiresReceipt;

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) {
    return PaymentMethodModel(
      id: json['id'] as String,
      name: json['name'] as String,
      instruction: json['instruction'] as String,
      image: json['image'] as String,
      requiresReceipt: json['requires_receipt'] as bool,
    );
  }
}
