import 'package:ewan/core/core.dart';
import 'package:ewan/features/reservation/bloc/select_dates_cubit.dart';
import 'package:ewan/features/reservation/data/reservation_repository.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDatesBottomSheet extends StatelessWidget {
  const SelectDatesBottomSheet({
    super.key,
    required this.propertyId,
    required this.pricePerNight,
  });

  final String propertyId;
  final double pricePerNight;

  static Future<Map<String, DateTime>?> show(
    BuildContext context, {
    required String propertyId,
    required double pricePerNight,
  }) {
    return showModalBottomSheet<Map<String, DateTime>?>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => BlocProvider(
        create: (_) => SelectDatesCubit(
          getIt<ReservationRepository>(),
          propertyId: propertyId,
        )..loadUnavailableDates(),
        child: SelectDatesBottomSheet(
          propertyId: propertyId,
          pricePerNight: pricePerNight,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      expand: false,
      builder: (context, scrollController) {
        return BlocConsumer<SelectDatesCubit, SelectDatesState>(
          listener: (context, state) {
            if (state.status == SelectDatesStatus.error &&
                state.errorMessage != null) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                _buildHeader(context, state),
                const Divider(height: 1),
                Expanded(
                  child: state.status == SelectDatesStatus.loading
                      ? const Center(child: CircularProgressIndicator())
                      : ListView(
                          controller: scrollController,
                          children: [_buildCalendar(context, state)],
                        ),
                ),
                if (state.hasValidRange) _buildBottomBar(context, state),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context, SelectDatesState state) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          Column(
            children: [
              Text(
                state.hasValidRange
                    ? '${state.numberOfNights} ${state.numberOfNights == 1 ? LocaleKeys.night.tr() : LocaleKeys.nights.tr()}'
                    : LocaleKeys.selectDates.tr(),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontFamily: FontFamily.alexandria,
                  color: Palette.fontColor,
                ),
              ),
              if (state.hasValidRange)
                Text(
                  '${_formatDate(state.checkIn!)} - ${_formatDate(state.checkOut!)}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontFamily: FontFamily.alexandria,
                    color: Palette.fontColor,
                  ),
                ),
            ],
          ),
          TextButton(
            onPressed: state.checkIn != null
                ? () => context.read<SelectDatesCubit>().clearSelection()
                : null,
            child: Text(
              LocaleKeys.clear.tr(),
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontFamily: FontFamily.alexandria,
                color: Palette.fontColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendar(BuildContext context, SelectDatesState state) {
    final cubit = context.read<SelectDatesCubit>();
    final now = DateTime.now();

    return TableCalendar(
      firstDay: DateTime(now.year, now.month, now.day),
      lastDay: DateTime(now.year + 1, now.month, now.day),
      focusedDay: state.checkIn ?? now,
      rangeStartDay: state.checkIn,
      rangeEndDay: state.checkOut,
      rangeSelectionMode: RangeSelectionMode.toggledOn,
      calendarFormat: CalendarFormat.month,
      availableGestures: AvailableGestures.horizontalSwipe,
      daysOfWeekHeight: 32,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        leftChevronIcon: Icon(Icons.chevron_left),
        rightChevronIcon: Icon(Icons.chevron_right),
      ),
      daysOfWeekStyle: const DaysOfWeekStyle(
        weekdayStyle: TextStyle(
          fontFamily: FontFamily.alexandria,
          fontWeight: FontWeight.w600,
          fontSize: 13,
          color: Palette.fontColor,
        ),
        weekendStyle: TextStyle(
          fontFamily: FontFamily.alexandria,
          fontWeight: FontWeight.w600,
          fontSize: 13,
          color: Palette.fontColor,
        ),
      ),
      enabledDayPredicate: (day) => !state.isDateUnavailable(day),
      onRangeSelected: (start, end, focusedDay) {
        if (start != null) cubit.selectDate(start);
        if (end != null) cubit.selectDate(end);
      },
      onDaySelected: (selectedDay, focusedDay) {
        cubit.selectDate(selectedDay);
      },
      calendarBuilders: CalendarBuilders(
        disabledBuilder: (context, day, focusedDay) {
          return Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text('${day.day}', style: TextStyle(color: Palette.semiGray)),
                Container(width: 20, height: 1, color: Palette.darkGray),
              ],
            ),
          );
        },
        selectedBuilder: (context, day, focusedDay) {
          return Container(
            margin: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Palette.primary,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              '${day.day}',
              style: const TextStyle(color: Palette.white),
            ),
          );
        },
        withinRangeBuilder: (context, day, focusedDay) {
          return Container(
            color: Palette.white.withValues(alpha: 0.15),
            alignment: Alignment.center,
            child: Text('${day.day}'),
          );
        },
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context, SelectDatesState state) {
    final total = pricePerNight * state.numberOfNights;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Palette.semiGray)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$pricePerNight * ${state.numberOfNights} = ${total.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: FontFamily.alexandria,
                  fontSize: 18,
                ),
              ),
              Text(
                LocaleKeys.total.tr(),
                style: TextStyle(color: Palette.primary),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, {
                'checkIn': state.checkIn!,
                'checkOut': state.checkOut!,
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Palette.primary,
              foregroundColor: Palette.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
            ),
            child: Text(LocaleKeys.save.tr()),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${date.day} ${months[date.month - 1]}';
  }
}
