import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/bloc/upload_receipt/upload_receipt_cubit.dart';
import 'package:ewan/features/reservation/data/models/reservation_model.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';
import 'package:ewan/features/reservation/presentation/widgets/upload_form_view.dart';
import 'package:ewan/features/reservation/presentation/widgets/upload_success_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UploadReceiptScreen extends StatelessWidget {
  const UploadReceiptScreen({super.key, required this.reservation});

  final ReservationModel reservation;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UploadReceiptCubit(
        getIt<ReservationRepository>(),
        reservation: reservation,
      ),
      child: const _UploadReceiptView(),
    );
  }
}

class _UploadReceiptView extends StatelessWidget {
  const _UploadReceiptView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<UploadReceiptCubit, UploadReceiptState>(
          listener: (context, state) {
            if (state.status == UploadReceiptStatus.error &&
                state.errorMessage != null) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
            }
          },
          builder: (context, state) {
            return state.status == UploadReceiptStatus.success
                ? UploadSuccessView(state: state)
                : UploadFormView(state: state);
          },
        ),
      ),
    );
  }
}
