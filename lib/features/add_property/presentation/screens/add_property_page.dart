import 'package:ewan/core/core.dart';
import 'package:ewan/features/add_property/bloc/add_property_cubit.dart';
import 'package:ewan/features/add_property/data/add_property_repository.dart';
import 'package:ewan/features/add_property/data/locations_repository.dart';
import 'package:ewan/features/add_property/data/services/file_upload_service.dart';
import 'package:ewan/features/add_property/presentation/screens/steps/step1_basic_info.dart';
import 'package:ewan/features/add_property/presentation/screens/steps/step2_location.dart';
import 'package:ewan/features/add_property/presentation/screens/steps/step3_details.dart';
import 'package:ewan/features/add_property/presentation/screens/steps/step4_photos.dart';
import 'package:ewan/features/add_property/presentation/screens/steps/step5_pricing.dart';
import 'package:ewan/features/add_property/presentation/widgets/add_property_app_bar.dart';
import 'package:ewan/features/home/data/models/properties_model.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddPropertyPage extends StatelessWidget {
  const AddPropertyPage({super.key, this.propertyId});

  final String? propertyId;
  // final bool forceNew;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddPropertyCubit(
        repository: getIt<AddPropertyRepository>(),
        locationsRepository: getIt<LocationsRepository>(),
        uploadService: getIt<FileUploadService>(),
      )..initWizard(propertyId: propertyId, forceNew: propertyId == null),
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
        // Navigating between PageView pages when changing steps
        BlocListener<AddPropertyCubit, AddPropertyState>(
          listenWhen: (prev, curr) => prev.currentStep != curr.currentStep,
          listener: (context, state) {
            _pageController.animateToPage(
              state.currentStep.index,
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
                title: Text(LocaleKeys.submissionFailed.tr()),
                content: Text(state.errorMessage!),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(dialogContext),
                    child: Text(LocaleKeys.oK.tr()),
                  ),
                ],
              ),
            );
          },
        ),
        BlocListener<AddPropertyCubit, AddPropertyState>(
          listenWhen: (prev, curr) =>
              prev.isSubmitting &&
              !curr.isSubmitting &&
              curr.errorMessage == null,
          listener: (context, state) {
            final String message = state.isEditMode
                ? LocaleKeys.propertyUpdatedSuccessfully.tr()
                : LocaleKeys.propertyAddedSuccessfully.tr();
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
            Navigator.pop(context);
          },
        ),
      ],
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
        final bool isBusy = state.isSavingStep || state.isSubmitting;
        final bool isFirstStep = state.currentStep == AddPropertyStep.basicInfo;

        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                if (!isFirstStep)
                  TextButton(
                    onPressed: isBusy
                        ? null
                        : () => context
                              .read<AddPropertyCubit>()
                              .goToPreviousStep(),
                    child: Text(
                      LocaleKeys.back.tr(),
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.4,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        fontFamily: FontFamily.alexandria,
                        color: Palette.fontColor,
                      ),
                    ),
                  ),
                const Spacer(),
                ElevatedButton(
                  onPressed: (state.isCurrentStepValid && !isBusy)
                      ? () async {
                          final cubit = context.read<AddPropertyCubit>();
                          if (!state.isLastStep) {
                            cubit.goToNextStep();
                            return;
                          }
                          if (state.originalStatus == PropertyStatus.approved) {
                            final bool? confirmed = await showDialog<bool>(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                title: Text(
                                  LocaleKeys.editPublishedProperty.tr(),
                                ),
                                content: Text(
                                  LocaleKeys.editPublishedWarning.tr(),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(ctx, false),
                                    child: Text(LocaleKeys.cancel.tr()),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pop(ctx, true),
                                    child: Text(LocaleKeys.oK.tr()),
                                  ),
                                ],
                              ),
                            );
                            if (confirmed != true) return;
                          }
                          cubit.submit();
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Palette.primary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: isBusy
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(
                          state.isLastStep
                              ? LocaleKeys.submit.tr()
                              : LocaleKeys.next.tr(),
                          style: TextStyle(
                            color: Palette.white,
                            fontSize: 14,
                            fontFamily: FontFamily.alexandria,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
