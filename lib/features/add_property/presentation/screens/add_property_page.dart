import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/bloc/add_property_cubit.dart';
import 'package:ewan/features/add_property/data/services/file_upload_service.dart';
import 'package:ewan/features/add_property/presentation/screens/steps/step1_basic_info.dart';
import 'package:ewan/features/add_property/presentation/screens/steps/step2_location.dart';
import 'package:ewan/features/add_property/presentation/screens/steps/step3_details.dart';
import 'package:ewan/features/add_property/presentation/screens/steps/step4_photos.dart';
import 'package:ewan/features/add_property/presentation/screens/steps/step5_pricing.dart';
import 'package:ewan/features/add_property/presentation/widgets/add_property_app_bar.dart';
import 'package:ewan/features/home/bloc/property/property_cubit.dart';
import 'package:ewan/features/home/data/properties_repository.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddPropertyPage extends StatelessWidget {
  const AddPropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddPropertyCubit(
        repository: getIt<PropertiesRepository>(),
        uploadService: getIt<FileUploadService>(),
      ),
      child: const _AddPropertyView(),
    );
  }
}

class _AddPropertyView extends StatefulWidget {
  const _AddPropertyView();

  @override
  State<_AddPropertyView> createState() => _AddPropertyViewState();
}

class _AddPropertyViewState extends State<_AddPropertyView> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AddPropertyCubit, AddPropertyState>(
          listenWhen: (prev, curr) => prev.currentStep != curr.currentStep,
          listener: (context, state) {
            _pageController.animateToPage(
              state.currentStep,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        BlocListener<AddPropertyCubit, AddPropertyState>(
          listenWhen: (prev, curr) =>
              curr.errorMessage != null &&
              prev.errorMessage != curr.errorMessage,
          listener: (context, state) {
            showDialog(
              context: context,
              builder: (dialogContext) => AlertDialog(
                icon: Icon(
                  Icons.error_outline,
                  color: Theme.of(dialogContext).colorScheme.error,
                  size: 32,
                ),
                title: const Text('Submission Failed'),
                content: Text(state.errorMessage!),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(dialogContext),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          },
        ),
        BlocListener<AddPropertyCubit, AddPropertyState>(
          listenWhen: (prev, curr) => !prev.isSuccess && curr.isSuccess,
          listener: (context, state) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Property added successfully!')),
            );
            getIt<PropertyCubit>().loadProperties();
            // Navigator.pop(context);
            AutoTabsRouter.of(context).setActiveIndex(0);
          },
        ),
      ],

      //       Exception has occurred.
      // ProviderNotFoundException (Error: Could not find the correct Provider<PropertyCubit> above this BlocListener<AddPropertyCubit, AddPropertyState> Widget

      // This happens because you used a `BuildContext` that does not include the provider
      // of your choice. There are a few common scenarios:

      // - You added a new provider in your `main.dart` and performed a hot-reload.
      //   To fix, perform a hot-restart.

      // - The provider you are trying to read is in a different route.

      //   Providers are "scoped". So if you insert of provider inside a route, then
      //   other routes will not be able to access that provider.

      // - You used a `BuildContext` that is an ancestor of the provider you are trying to read.

      //   Make sure that BlocListener<AddPropertyCubit, AddPropertyState> is under your MultiProvider/Provider<PropertyCubit>.
      //   This usually happens when you are creating a provider and trying to read it immediately.

      //   For example, instead of:

      //   ```
      //   Widget build(BuildContext context) {
      //     return Provider<Example>(
      //       create: (_) => Example(),
      //       // Will throw a ProviderNotFoundError, because `context` is associated
      //       // to the widget that is the parent of `Provider<Example>`
      //       child: Text(context.watch<Example>().toString()),
      //     );
      //   }
      //   ```

      //   consider using `builder` like so:

      //   ```
      //   Widget build(BuildContext context) {
      //     return Provider<Example>(
      //       create: (_) => Example(),
      //       // we use `builder` to obtain a new `BuildContext` that has access to the provider
      //       builder: (context, child) {
      //         // No longer throws
      //         return Text(context.watch<Example>().toString());
      //       }
      //     );
      //   }
      //   ```

      // If none of these solutions work, consider asking for help on StackOverflow:
      // https://stackoverflow.com/questions/tagged/flutter
      // )
      child: Scaffold(
        appBar: const AddPropertyAppBar(),
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            AddPropertyStep1(),
            AddPropertyStep2(),
            AddPropertyStep3(),
            AddPropertyStep4(),
            AddPropertyStep5(),
          ],
        ),
        bottomNavigationBar: const _AddPropertyBottomBar(),
      ),
    );
  }
}

class _AddPropertyBottomBar extends StatelessWidget {
  const _AddPropertyBottomBar();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPropertyCubit, AddPropertyState>(
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                if (!state.isFirstStep)
                  TextButton(
                    onPressed: state.isSubmitting
                        ? null
                        : () => context.read<AddPropertyCubit>().previousStep(),
                    child: const Text('Back'),
                  ),
                const Spacer(),
                ElevatedButton(
                  onPressed: (state.canGoNext && !state.isSubmitting)
                      ? () {
                          if (state.isLastStep) {
                            context.read<AddPropertyCubit>().submit();
                          } else {
                            context.read<AddPropertyCubit>().nextStep();
                          }
                        }
                      : null,
                  child: state.isSubmitting
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(state.isLastStep ? 'Submit' : 'Next'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
