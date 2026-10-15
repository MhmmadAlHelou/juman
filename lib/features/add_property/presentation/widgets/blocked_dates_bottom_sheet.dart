import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

DateTime normalizeDate(DateTime d) => DateTime.utc(d.year, d.month, d.day);

class BlockedDatesBottomSheet extends StatefulWidget {
  const BlockedDatesBottomSheet({super.key, required this.initialDates});

  final Set<DateTime> initialDates;

  static Future<Set<DateTime>?> show(
    BuildContext context, {
    required Set<DateTime> initialDates,
  }) {
    return showModalBottomSheet<Set<DateTime>>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (_) => BlockedDatesBottomSheet(initialDates: initialDates),
    );
  }

  @override
  State<BlockedDatesBottomSheet> createState() =>
      _BlockedDatesBottomSheetState();
}

class _BlockedDatesBottomSheetState extends State<BlockedDatesBottomSheet> {
  late final Set<DateTime> _selected;
  late DateTime _focusedDay;
  late final DateTime _today;

  @override
  void initState() {
    super.initState();
    _today = normalizeDate(DateTime.now());
    _focusedDay = _today;
    _selected = widget.initialDates.map(normalizeDate).toSet();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    final day = normalizeDate(selectedDay);
    setState(() {
      _focusedDay = focusedDay;
      if (!_selected.remove(day)) _selected.add(day);
    });
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.unavailableDates.tr(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 4),
          Text(
            LocaleKeys.tapDaysNotWantRent.tr(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 12),
          TableCalendar<void>(
            firstDay: _today,
            lastDay: _today.add(const Duration(days: 365)),
            focusedDay: _focusedDay,
            availableGestures: AvailableGestures.horizontalSwipe,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            selectedDayPredicate: (day) =>
                _selected.contains(normalizeDate(day)),
            onDaySelected: _onDaySelected,
            onPageChanged: (focused) => _focusedDay = focused,
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
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: Palette.primary,
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color: scheme.primary.withValues(alpha: 0.25),
                shape: BoxShape.circle,
              ),
              todayTextStyle: TextStyle(color: scheme.onSurface),
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                TextButton(
                  onPressed: _selected.isEmpty
                      ? null
                      : () => setState(_selected.clear),
                  child: Text(LocaleKeys.clear.tr()),
                ),
                const Spacer(),
                FilledButton(
                  onPressed: () => Navigator.of(context).pop(Set.of(_selected)),
                  child: Text('${LocaleKeys.save.tr()} (${_selected.length})'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
