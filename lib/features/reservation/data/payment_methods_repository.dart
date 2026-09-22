import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/data/models/payment_method_model.dart';

abstract class PaymentMethodsRepository {
  Future<List<PaymentMethodModel>> getPaymentMethods();
}

class PaymentMethodsRepositoryImpl implements PaymentMethodsRepository {
  PaymentMethodsRepositoryImpl(this.dioClient);
  final DioClient dioClient;

  @override
  Future<List<PaymentMethodModel>> getPaymentMethods() async {
    try {
      final response = await dioClient.sendRequest(
        RequestType.get,
        EndPoint.paymentMethods,
      );
      return (response.data as List)
          .map((e) => PaymentMethodModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw BackendException(dioException: e);
    }
  }
}

class MockPaymentMethodsRepository implements PaymentMethodsRepository {
  @override
  Future<List<PaymentMethodModel>> getPaymentMethods() async {
    await Future.delayed(const Duration(milliseconds: 400));
    return const [
      PaymentMethodModel(
        id: 'bank-transfer',
        name: 'Bank Transfer',
        instruction:
            'HSBC Private International / JPMorgan Chase\nHorizon Stays Escrow Ltd.',
        image: '',
        requiresReceipt: true,
      ),
      PaymentMethodModel(
        id: 'mobile-pay',
        name: 'Mobile Pay',
        instruction: 'Apple Pay or Google Wallet',
        image: '',
        requiresReceipt: false,
      ),
    ];
  }
}
