import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/bloc/add_property_cubit.dart';
import 'package:flutter/material.dart';

class AddPropertyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AddPropertyAppBar({super.key});

  static const int totalSteps = 5;

  @override
  Size get preferredSize => const Size.fromHeight(90);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 8),
          // Text(
          //   'Juman',
          //   style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          //     fontWeight: FontWeight.bold,
          //     color: Theme.of(context).colorScheme.primary,
          //   ),
          // ),
          Image.asset(
            AssetsManager.images.logoLabeled.path,
            height: 39,
            width: 127,
          ),
          const SizedBox(height: 12),

          // progress bar
          BlocBuilder<AddPropertyCubit, AddPropertyState>(
            buildWhen: (p, c) => p.currentStep != c.currentStep,
            builder: (context, state) {
              final progress = (state.currentStep.index + 1) / totalSteps;
              return ClipRRect(
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 3,
                  backgroundColor: Palette.semiGray,
                  valueColor: AlwaysStoppedAnimation(Palette.primary),
                ),
              );
            },
          ),
          const SizedBox(height: 8),

          // ----  "Step X of Y"  ----
          BlocBuilder<AddPropertyCubit, AddPropertyState>(
            buildWhen: (p, c) => p.currentStep != c.currentStep,
            builder: (context, state) {
              return Text(
                LocaleKeys.stepOf.tr(
                  args: [
                    (state.currentStep.index + 1).toString(),
                    totalSteps.toString(),
                  ],
                ),
                // 'step ${state.currentStep + 1} of $totalSteps',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey.shade600,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontFamily: FontFamily.alexandria,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
