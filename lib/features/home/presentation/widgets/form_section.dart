import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';
// import '../../../orders/bloc/orders_bloc.dart';
import '../../home.dart';

class FormSection extends StatefulWidget {
  const FormSection({super.key, required this.serviceResult});

  final ServiceResult serviceResult;

  @override
  State<FormSection> createState() => _FormSectionState();
}

class _FormSectionState extends State<FormSection> {
  final Map<String, dynamic> _formValues = <String, dynamic>{};
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late GlobalButtonController globalButtonController;
  late FocusNode submitButtonFocusNode;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? startDate, endDate, title;

  @override
  void initState() {
    globalButtonController = GlobalButtonController();
    submitButtonFocusNode = FocusNode();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return BlocListener<OrdersBloc, OrdersState>(
    //   listener: (BuildContext context, OrdersState state) {
    //     state.maybeWhen(
    //       loadingCreateOrder: () => globalButtonController.changeToLoader(),
    //       successCreateOrder: () {
    //         globalButtonController.value = null;
    //         // Refresh the orders list
    //         GlobalNotifiers.orderNotifier.value =
    //             !GlobalNotifiers.orderNotifier.value;
    //         showSuccessDialog(context);
    //       },
    //       failureCreateOrder: (GeneralException? generalException) {
    //         globalButtonController.value = null;
    //         showSnackBar(
    //           context: context,
    //           message: generalException?.message,
    //           isError: true,
    //         );
    //       },
    //       orElse: () {},
    //     );
    //   },
    //   child:
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 12),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(LocaleKeys.title.tr(), style: context.titleSmall),
                  TextInputWidget(
                    focusNode: FocusNode(),
                    isEmpty: true,
                    onChanged: (String value) => title = value,
                    keyboardType: TextInputType.text,
                    validator: (String? p0) {
                      return validateInput(p0, context, <ValidationType>[
                        ValidationType.requiredField,
                      ]);
                    },
                  ),
                ],
              ),
            ),

            ...widget.serviceResult.form!.fields.map((FieldData field) {
              return Padding(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 12),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Builder(
                      builder: (BuildContext context) {
                        if (field.required == true) {
                          return Row(
                            spacing: 4,
                            children: <Widget>[
                              Text(
                                field.label ?? "",
                                style: context.titleSmall,
                              ),
                              const Text(
                                "*",
                                style: TextStyle(color: Palette.hint),
                              ),
                            ],
                          );
                        }
                        return Text(
                          field.label ?? "",
                          style: context.titleSmall,
                        );
                      },
                    ),
                    if (field.notes != null)
                      Row(
                        spacing: 4,
                        children: <Widget>[
                          Icon(
                            Icons.info_outline,
                            size: 16,
                            color: context.theme.hintColor,
                          ),
                          Text(
                            field.notes ?? "",
                            style: context.titleSmall?.copyWith(
                              color: context.theme.hintColor,
                            ),
                          ),
                        ],
                      ),
                    _buildField(field),
                  ],
                ),
              );
            }),

            Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 12),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(LocaleKeys.startDate.tr(), style: context.titleSmall),
                  Row(
                    spacing: 4,
                    children: <Widget>[
                      Icon(
                        Icons.info_outline,
                        size: 16,
                        color: context.theme.hintColor,
                      ),
                      Text(
                        (LocaleKeys.selectStartDate).tr(),
                        style: context.titleSmall?.copyWith(
                          color: context.theme.hintColor,
                        ),
                      ),
                    ],
                  ),
                  _buildDateStartPicker(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 12),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(LocaleKeys.endDate.tr(), style: context.titleSmall),
                  Row(
                    spacing: 4,
                    children: <Widget>[
                      Icon(
                        Icons.info_outline,
                        size: 16,
                        color: context.theme.hintColor,
                      ),
                      Text(
                        (LocaleKeys.selectEndDate).tr(),
                        style: context.titleSmall?.copyWith(
                          color: context.theme.hintColor,
                        ),
                      ),
                    ],
                  ),
                  _buildDateEndPicker(),
                ],
              ),
            ),

            const SizedBox(height: 20),
            GlobalButton(
              controller: globalButtonController,
              focusNode: submitButtonFocusNode,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  if (!PrefData.isSignedIn) {
                    context.pushRoute(
                      LoginRoute(onLoginSuccess: () => context.maybePop()),
                    );
                    return;
                  }
                  // context.read<OrdersBloc>().add(
                  //   OrdersEvent.createOrder(
                  //     fields: widget.serviceResult.form!.fields,
                  //     subServiceId: widget.serviceResult.id,
                  //     values: _formValues,
                  //     startDate: startDate ?? "",
                  //     endDate: endDate ?? "",
                  //     title: title ?? "",
                  //   ),
                  // );
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.onUserInteraction;
                  });
                }
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: <Widget>[
                  Text(
                    LocaleKeys.save.tr(),
                    style: context.bodySmall?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Palette.white,
                    ),
                  ),
                  const Icon(Icons.send, color: Palette.white, size: 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    // );
  }

  Widget _buildField(FieldData field) {
    switch (field.fieldType) {
      case FieldType.text: // Text
        return _buildTextField(field.label ?? "", field.required ?? false);
      case FieldType.longText: // Text
        return _buildTextField(
          field.label ?? "",
          field.required ?? false,
          isLong: true,
        );
      case FieldType.link: // Text
        return _buildTextField(field.label ?? "", field.required ?? false);
      case FieldType.number: // Number
        return _buildTextField(
          field.label ?? "",
          field.required ?? false,
          isNumber: true,
        );
      case FieldType.date: // Date
        return _buildDatePicker(field.label ?? "", field.required ?? false);
      case FieldType.time: // Date
        return _buildTimePicker(field.label ?? "", field.required ?? false);
      case FieldType.dropDown: // Dropdown
        return _buildDropdown(
          field.label ?? "",
          field.options!,
          field.required ?? false,
        );
      case FieldType.radio: // Radio
        return _buildRadioGroup(
          field.label ?? "",
          field.options!,
          field.required ?? false,
        );
      case FieldType.checkbox: // Checkbox
        return _buildCheckbox(field.label ?? "", field.required ?? false);
      case FieldType.map: // Map
        return _buildMapPicker(field.label ?? "", field.required ?? false);
      case FieldType.file: // File
        return _buildFilePicker(field.label ?? "", field.required ?? false);
      default:
        return _buildPlaceholder("Unknown field");
    }
  }

  Widget _buildTextField(
    String name,
    bool isRequired, {
    bool isNumber = false,
    bool isLong = false,
  }) {
    return TextInputWidget(
      focusNode: FocusNode(),
      isEmpty: true,
      onChanged: (String value) => _formValues[name] = value,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      hintText: name,
      minLines: isLong ? 5 : 1,
      maxLines: isLong ? 15 : 2,
      validator: (String? p0) {
        if (isRequired) {
          return validateInput(p0, context, <ValidationType>[
            if (isNumber) ValidationType.number,
            ValidationType.requiredField,
          ]);
        }
        return null;
      },
    );
  }

  Widget _buildDatePicker(String name, bool isRequired) {
    return FormField<String>(
      validator: (String? value) {
        if (isRequired &&
            (_formValues[name] == null || _formValues[name].isEmpty)) {
          return (LocaleKeys.selectDate.tr());
        }
        return null;
      },
      builder: (FormFieldState<String> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate:
                      DateTime.tryParse(_formValues[name] ?? "") ??
                      DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        textTheme: const TextTheme(
                          titleLarge: TextStyle(fontSize: 20),
                          bodyLarge: TextStyle(fontSize: 16),
                          labelLarge: TextStyle(fontSize: 14),
                        ),
                      ),
                      child: child!,
                    );
                  },
                );
                if (picked != null) {
                  setState(() {
                    _formValues[name] = DateFormat('dd/MM/yyyy').format(picked);
                  });

                  state.didChange(DateFormat('dd/MM/yyyy').format(picked));
                }
              },
              child: Container(
                width: double.infinity,
                height: 48,
                decoration: AppDecorations.rounded(
                  color: Palette.white,
                  radius: 12,
                  borderColor: state.hasError
                      ? Colors.red
                      : const Color.fromRGBO(241, 245, 249, 1),
                ),
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_formValues[name] ?? name, style: context.bodySmall),
                    const Icon(Icons.calendar_month_outlined),
                  ],
                ),
              ),
            ),
            if (state.hasError)
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 25,
                  vertical: 5,
                ),
                child: Text(
                  state.errorText!,
                  style: context.labelLarge?.copyWith(
                    color: context.colorScheme.error,
                    height: 0,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildDateStartPicker() {
    return FormField<String>(
      validator: (String? value) {
        if ((startDate == null || (startDate?.isEmpty ?? false))) {
          return (LocaleKeys.selectDate).tr();
        }
        return null;
      },
      builder: (FormFieldState<String> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate:
                      DateTime.tryParse(startDate ?? "") ?? DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        textTheme: const TextTheme(
                          titleLarge: TextStyle(fontSize: 20),
                          bodyLarge: TextStyle(fontSize: 16),
                          labelLarge: TextStyle(fontSize: 14),
                        ),
                      ),
                      child: child!,
                    );
                  },
                );
                if (picked != null) {
                  String pattern = "dd/MM/yyyy";
                  setState(() {
                    startDate = DateFormat(pattern).format(picked);
                  });

                  state.didChange(DateFormat(pattern).format(picked));
                }
              },
              child: Container(
                width: double.infinity,
                height: 48,
                decoration: AppDecorations.rounded(
                  color: Palette.white,
                  radius: 12,
                  borderColor: state.hasError
                      ? Colors.red
                      : const Color.fromRGBO(241, 245, 249, 1),
                ),
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(startDate ?? "", style: context.bodySmall),
                    const Icon(Icons.calendar_month_outlined),
                  ],
                ),
              ),
            ),
            if (state.hasError)
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 25,
                  vertical: 5,
                ),
                child: Text(
                  state.errorText!,
                  style: context.labelLarge?.copyWith(
                    color: context.colorScheme.error,
                    height: 0,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildDateEndPicker() {
    return FormField<String>(
      validator: (String? value) {
        if ((endDate == null || (endDate?.isEmpty ?? false))) {
          return (LocaleKeys.selectDate).tr();
        }
        return null;
      },
      builder: (FormFieldState<String> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate:
                      DateTime.tryParse(endDate ?? "") ?? DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        textTheme: const TextTheme(
                          titleLarge: TextStyle(fontSize: 20),
                          bodyLarge: TextStyle(fontSize: 16),
                          labelLarge: TextStyle(fontSize: 14),
                        ),
                      ),
                      child: child!,
                    );
                  },
                );
                if (picked != null) {
                  String pattern = "dd/MM/yyyy";
                  setState(() {
                    endDate = DateFormat(pattern).format(picked);
                  });

                  state.didChange(DateFormat(pattern).format(picked));
                }
              },
              child: Container(
                width: double.infinity,
                height: 48,
                decoration: AppDecorations.rounded(
                  color: Palette.white,
                  radius: 12,
                  borderColor: state.hasError
                      ? Colors.red
                      : const Color.fromRGBO(241, 245, 249, 1),
                ),
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(endDate ?? "", style: context.bodySmall),
                    const Icon(Icons.calendar_month_outlined),
                  ],
                ),
              ),
            ),
            if (state.hasError)
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 25,
                  vertical: 5,
                ),
                child: Text(
                  state.errorText!,
                  style: context.labelLarge?.copyWith(
                    color: context.colorScheme.error,
                    height: 0,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildTimePicker(String name, bool isRequired) {
    return FormField<String>(
      validator: (String? value) {
        if (isRequired &&
            (_formValues[name] == null || _formValues[name].isEmpty)) {
          return (LocaleKeys.selectTime).tr();
        }
        return null;
      },
      builder: (FormFieldState<String> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                TimeOfDay? picked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        textTheme: const TextTheme(
                          titleLarge: TextStyle(fontSize: 20),
                          bodyLarge: TextStyle(fontSize: 16),
                          labelLarge: TextStyle(fontSize: 14),
                        ),
                        cardColor: Palette.white,
                      ),
                      child: child!,
                    );
                  },
                );
                if (picked != null) {
                  setState(() {
                    _formValues[name] = picked.format(context);
                  });
                  state.didChange(picked.toString());
                }
              },
              child: Container(
                width: double.infinity,
                height: 48,
                decoration: AppDecorations.rounded(
                  color: Palette.white,
                  radius: 12,
                  borderColor: state.hasError
                      ? Colors.red
                      : const Color.fromRGBO(241, 245, 249, 1),
                ),
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_formValues[name] ?? name, style: context.bodySmall),
                    const Icon(Icons.calendar_month_outlined),
                  ],
                ),
              ),
            ),
            if (state.hasError)
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 25,
                  vertical: 5,
                ),
                child: Text(
                  state.errorText!,
                  style: context.labelLarge?.copyWith(
                    color: context.colorScheme.error,
                    height: 0,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildDropdown(
    String name,
    List<OptionData> options,
    bool isRequired,
  ) {
    return DropdownButtonFormField<OptionData>(
      decoration: InputDecoration(
        // labelText: name,
        labelStyle: context.bodySmall,
        filled: true,
        fillColor: Palette.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color.fromRGBO(241, 245, 249, 1)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color.fromRGBO(241, 245, 249, 1)),
        ),
      ),
      items: options.map((OptionData opt) {
        return DropdownMenuItem<OptionData>(
          value: opt,
          child: Text(opt.value ?? ""),
        );
      }).toList(),

      onChanged: (OptionData? option) => _formValues[name] = option?.value,
      validator: (OptionData? value) {
        if (isRequired && value == null) {
          return LocaleKeys.emptyField.tr();
        }
        return null;
      },
    );
  }

  Widget _buildRadioGroup(
    String name,
    List<OptionData> options,
    bool isRequired,
  ) {
    return FormField<String>(
      validator: (String? value) {
        if (isRequired &&
            (_formValues[name] == null || _formValues[name].isEmpty)) {
          return 'Please select an option';
        }
        return null;
      },
      builder: (FormFieldState<String> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ...options.map((OptionData opt) {
              return RadioListTile<String>(
                title: Text(opt.value ?? '', style: context.bodySmall),
                value: opt.value ?? '',
                groupValue: _formValues[name],
                onChanged: (String? value) {
                  setState(() {
                    _formValues[name] = value;
                  });
                  state.didChange(value);
                },
              );
            }),
            if (state.hasError)
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 25,
                  vertical: 5,
                ),
                child: Text(
                  state.errorText!,
                  style: context.labelLarge?.copyWith(
                    color: context.colorScheme.error,
                    height: 0,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildCheckbox(String name, bool isRequired) {
    return FormField<bool>(
      initialValue: _formValues[name] ?? false,
      validator: (bool? value) {
        if (isRequired && (value != true)) {
          return (LocaleKeys.fieldRequired.tr());
        }
        return null;
      },
      builder: (FormFieldState<bool> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CheckboxListTile(
              title: Text(name, style: context.titleSmall),
              value: state.value,
              onChanged: (bool? val) {
                setState(() {
                  _formValues[name] = val;
                });
                state.didChange(val); // Notify FormField
              },
            ),
            if (state.hasError)
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 25,
                  vertical: 5,
                ),
                child: Text(
                  state.errorText!,
                  style: context.labelLarge?.copyWith(
                    color: context.colorScheme.error,
                    height: 0,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildFilePicker(String name, bool isRequired) {
    return FormField<PlatformFile>(
      validator: (PlatformFile? value) {
        if (isRequired && (_formValues[name] == null)) {
          return 'Please select a file';
        }
        return null;
      },
      builder: (FormFieldState<PlatformFile> state) {
        final PlatformFile? selectedFile = _formValues[name];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                List<PlatformFile> result = await FilePicker.pickFiles(
                  // allowMultiple: false
                );
                if (result.isNotEmpty && result.single.path != null) {
                  final PlatformFile file = result.single;
                  setState(() {
                    _formValues[name] = file;
                  });
                  state.didChange(file); // Trigger validation
                }
              },
              child: Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: Palette.gray,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: state.hasError ? Colors.red : Colors.transparent,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        selectedFile != null
                            ? selectedFile.name
                            : "Select File",
                        style: context.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Icon(Icons.attach_file_outlined),
                  ],
                ),
              ),
            ),
            if (state.hasError)
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 25,
                  vertical: 5,
                ),
                child: Text(
                  state.errorText!,
                  style: context.labelLarge?.copyWith(
                    color: context.colorScheme.error,
                    height: 0,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildMapPicker(String name, bool isRequired) {
    return const SizedBox();
  }

  Widget _buildPlaceholder(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(label, style: const TextStyle(color: Colors.grey)),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,

      builder: (BuildContext context) {
        return PopScope(
          onPopInvokedWithResult: (bool didPop, dynamic result) {
            context.router.replaceAll(<PageRouteInfo<Object?>>[
              const BaseRoute(),
            ]);
          },
          child: Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Circle icon with yellow smiley
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: <Color>[Color(0xFFF6C646), Color(0xFFFFD966)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    // todo locale
                    "Done !",
                    style: context.bodyLarge?.copyWith(
                      color: context.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    LocaleKeys.fiebcoWillContactYouShortly.tr(),
                    textAlign: TextAlign.center,
                    style: context.bodySmall,
                  ),
                  const SizedBox(height: 24),
                  GlobalButton(
                    backgroundColor: Palette.gray,
                    onPressed: () {
                      context.router.replaceAll(<PageRouteInfo<Object?>>[
                        const BaseRoute(),
                      ]);
                    },
                    child: Text(
                      LocaleKeys.backToHome.tr(),
                      style: context.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
