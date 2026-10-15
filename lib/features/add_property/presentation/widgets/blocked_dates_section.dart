import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

import 'blocked_dates_bottom_sheet.dart';

class BlockedDatesSection extends StatelessWidget {
  const BlockedDatesSection({
    super.key,
    required this.blockedDates,
    required this.onChanged,
  });

  final Set<DateTime> blockedDates;
  final ValueChanged<Set<DateTime>> onChanged;

  Future<void> _open(BuildContext context) async {
    final result = await BlockedDatesBottomSheet.show(
      context,
      initialDates: blockedDates,
    );
    if (result != null) onChanged(result);
  }

  @override
  Widget build(BuildContext context) {
    final count = blockedDates.length;

    return Material(
      type:
          MaterialType.transparency, // avoids ink splash warning (known gotcha)
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => _open(context),
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).dividerColor),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const Icon(Icons.event_busy_outlined),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.unavailableDatesOptional.tr(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      count == 0
                          ? LocaleKeys.allDatesAreOpenForBooking
                          : '$count ${LocaleKeys.daysBlocked}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
