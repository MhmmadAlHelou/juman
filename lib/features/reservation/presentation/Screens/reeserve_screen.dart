import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:ewan/features/reservation/bloc/reserve_cubit.dart';
import 'package:ewan/features/reservation/data/payment_methods_repository.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';
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
        // TODO: swap to getIt<ReservationRepository>() once the backend
        // currency config is fixed — mocked locally for now since the mock
        // needs the already-loaded `property` object.
        MockReservationRepository(fakeProperty: property),
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
          if (state.status == ReserveStatus.error &&
              state.errorMessage != null) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
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
                    _PropertySummaryCard(property: state.property),
                    const SizedBox(height: 24),
                    _TripSection(state: state),
                    const SizedBox(height: 24),
                    _PayWithSection(state: state),
                    const SizedBox(height: 24),
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

class _PropertySummaryCard extends StatelessWidget {
  const _PropertySummaryCard({required this.property});
  final PropertiesModel property;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: property.coverImageUrl != null
              ? Image.network(
                  property.coverImageUrl!,
                  width: 64,
                  height: 64,
                  fit: BoxFit.cover,
                )
              : Container(width: 64, height: 64, color: Palette.semiGray),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                property.title,
                style: const TextStyle(
                  color: Palette.fontColor,
                  fontFamily: FontFamily.alexandria,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 14,
                    color: Palette.fontColor.withValues(alpha: 0.6),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${property.area.name}, ${property.city.name}',
                    style: TextStyle(
                      fontFamily: FontFamily.alexandria,
                      color: Palette.fontColor.withValues(alpha: 0.6),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
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
        _InfoTile(
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
        _InfoTile(
          icon: Icons.people_outline,
          title: LocaleKeys.guests.tr(),
          subtitle: '${state.numberOfGuests} ${LocaleKeys.guests.tr()}',
        ),
      ],
    );
  }

  String _fmt(DateTime d) => '${d.day}/${d.month}/${d.year}';
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onEdit,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onEdit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Palette.primary),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: FontFamily.alexandria,
                    fontWeight: FontWeight.w600,
                    color: Palette.fontColor,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: FontFamily.alexandria,
                    color: Palette.fontColor.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
          if (onEdit != null)
            TextButton(
              onPressed: onEdit,
              child: Text(
                LocaleKeys.edit.tr(),
                style: TextStyle(
                  color: Palette.primary,
                  decoration: TextDecoration.underline,
                  fontFamily: FontFamily.alexandria,
                ),
              ),
            ),
        ],
      ),
    );
  }
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
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.totalSyp.tr(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              state.totalAmount.toStringAsFixed(0),
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
