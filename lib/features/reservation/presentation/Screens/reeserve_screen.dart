import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:ewan/features/reservation/bloc/reserve/reserve_cubit.dart';
import 'package:ewan/features/reservation/data/payment_methods_repository.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';
import 'package:ewan/features/reservation/presentation/widgets/info_tile.dart';
import 'package:ewan/features/reservation/presentation/widgets/property_summary_card.dart';
import 'package:ewan/features/reservation/presentation/widgets/select_dates_bottom_sheet.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReserveScreen extends StatelessWidget {
  const ReserveScreen({
    super.key,
    required this.property,
    required this.checkIn,
    required this.checkOut,
    required this.numberOfGuests,
  });

  final PropertiesModel property;
  final DateTime checkIn;
  final DateTime checkOut;
  final int numberOfGuests;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ReserveCubit(
        getIt<ReservationRepository>(),
        getIt<PaymentMethodsRepository>(),
        property: property,
        checkIn: checkIn,
        checkOut: checkOut,
        numberOfGuests: numberOfGuests,
      ),
      child: const _ReserveView(),
    );
  }
}

class _ReserveView extends StatelessWidget {
  const _ReserveView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(
          LocaleKeys.confirmAndPay.tr(),
          style: const TextStyle(
            fontFamily: FontFamily.alexandria,
            fontWeight: FontWeight.w600,
            color: Palette.fontColor,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<ReserveCubit, ReserveState>(
        listener: (context, state) {
          if (state.status == ReserveStatus.error) {
            if (state.errorCode == 'missing_verification_documents') {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text(LocaleKeys.verificationRequired.tr()),
                  content: Text(state.errorMessage ?? ''),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(LocaleKeys.cancel.tr()),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        context.router.push(const IdentityVerificationRoute());
                      },
                      child: Text(LocaleKeys.uploadNow.tr()),
                    ),
                  ],
                ),
              );
            } else if (state.errorMessage != null) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
            }
          }
          if (state.status == ReserveStatus.submitted &&
              state.createdReservation != null) {
            final requiresReceipt =
                state.selectedPaymentMethod?.requiresReceipt ?? false;
            if (requiresReceipt) {
              context.router.push(
                UploadReceiptRoute(reservation: state.createdReservation!),
              );
            } else {
              context.router.push(
                ReservationConfirmedRoute(
                  reservation: state.createdReservation!,
                ),
              );
            }
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    PropertySummaryCard(property: state.property),
                    const SizedBox(height: 24),
                    _TripSection(state: state),
                    const SizedBox(height: 24),
                    _PayWithSection(state: state),
                    const SizedBox(height: 24),
                    const Divider(),
                    _PriceDetails(state: state),
                  ],
                ),
              ),
              _BottomBar(state: state),
            ],
          );
        },
      ),
    );
  }
}

class _TripSection extends StatelessWidget {
  const _TripSection({required this.state});
  final ReserveState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(LocaleKeys.yourTrip.tr(), style: _sectionTitleStyle),
        const SizedBox(height: 8),
        InfoTile(
          icon: Icons.calendar_today,
          title: LocaleKeys.dates.tr(),
          subtitle:
              '${_fmt(state.checkIn)} – ${_fmt(state.checkOut)}\n'
              '${state.numberOfNights} ${LocaleKeys.nights.tr()}',
          onEdit: () async {
            final cubit = context.read<ReserveCubit>();
            final result = await SelectDatesBottomSheet.show(
              context,
              propertyId: state.property.id,
              pricePerNight: state.property.pricePerNight,
              maxGuests: state.property.maxGuests,
              initialCheckIn: state.checkIn,
              initialCheckOut: state.checkOut,
              initialGuests: state.numberOfGuests,
            );
            if (result == null) return;
            if (!context.mounted) return;

            cubit.updateDates(
              result['checkIn'] as DateTime,
              result['checkOut'] as DateTime,
            );
            cubit.updateGuests(result['numberOfGuests'] as int);
          },
        ),
        InfoTile(
          icon: Icons.people_outline,
          title: LocaleKeys.guests.tr(),
          subtitle: '${state.numberOfGuests} ${LocaleKeys.guests.tr()}',
        ),
      ],
    );
  }

  String _fmt(DateTime d) => '${d.day}/${d.month}/${d.year}';
}

class _PayWithSection extends StatelessWidget {
  const _PayWithSection({required this.state});
  final ReserveState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ReserveCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(LocaleKeys.payWith.tr(), style: _sectionTitleStyle),
        const SizedBox(height: 8),
        RadioGroup<String>(
          groupValue: state.selectedPaymentMethod?.id,
          onChanged: (value) {
            if (value == null) return;
            final method = state.paymentMethods.firstWhere(
              (m) => m.id == value,
            );
            cubit.selectPaymentMethod(method);
          },
          child: Column(
            children: state.paymentMethods
                .map(
                  (method) => RadioListTile<String>(
                    value: method.id,
                    title: Text(method.name),
                    subtitle: Text(
                      method.instruction,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    activeColor: Palette.primary,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class _PriceDetails extends StatelessWidget {
  const _PriceDetails({required this.state});
  final ReserveState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(LocaleKeys.priceDetails.tr(), style: _sectionTitleStyle),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${state.property.pricePerNight.toStringAsFixed(0)} × '
              '${state.numberOfNights} ${LocaleKeys.nights.tr()}',
            ),
            // Text(state.totalAmount.toStringAsFixed(0)),
          ],
        ),
        // const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.totalSyp.tr(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              state.totalAmount.toStringAsFixed(2),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({required this.state});
  final ReserveState state;

  @override
  Widget build(BuildContext context) {
    final loading = state.status == ReserveStatus.submitting;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: state.canSubmit
                ? () => context.read<ReserveCubit>().submit()
                : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Palette.primary,
              foregroundColor: Palette.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: loading
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: Palette.white,
                      strokeWidth: 2,
                    ),
                  )
                : Text(LocaleKeys.confirmAndSubmit.tr()),
          ),
        ),
      ),
    );
  }
}

const _sectionTitleStyle = TextStyle(
  color: Palette.fontColor,
  fontFamily: FontFamily.alexandria,
  fontWeight: FontWeight.w600,
  fontSize: 16,
);
