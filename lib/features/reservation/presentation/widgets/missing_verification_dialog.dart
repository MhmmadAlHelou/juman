import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

void showMissingVerificationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text(LocaleKeys.verificationRequired.tr()),
      content: Text(LocaleKeys.verificationRequiredBody.tr()),
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
}
