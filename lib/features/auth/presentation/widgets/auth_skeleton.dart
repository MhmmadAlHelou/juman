import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class AuthSkeleton extends StatefulWidget {
  const AuthSkeleton({
    super.key,

    required this.formKey,
    required this.title,
    this.subTitle,
    this.subTitleArgs,
    required this.content,

    this.autovalidateMode = AutovalidateMode.disabled,
    this.withLogo = false,
    this.withTopSpace = true,
  });

  final GlobalKey<FormState> formKey;
  final AutovalidateMode? autovalidateMode;

  final String title;

  final String? subTitle;
  final String? subTitleArgs;
  final bool withLogo;
  final bool withTopSpace;
  final List<Widget> content;

  @override
  State<AuthSkeleton> createState() => _AuthSkeletonState();
}

class _AuthSkeletonState extends State<AuthSkeleton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double width = constraints.maxWidth;
          return SingleChildScrollView(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: ResponsiveUtils.responsiveSize(
                context,
                mobile: 32,
                tablet: width * 0.2,
                desktop: width * 0.2,
              ),
            ),
            child: Form(
              key: widget.formKey,
              autovalidateMode: widget.autovalidateMode,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).padding.top + 32),
                  Center(
                    child: Container(
                      height: 120,
                      width: 192,
                      // decoration: BoxDecoration(
                      //   shape: BoxShape.circle,
                      //   color: Palette.primary.withValues(alpha: 0.1),
                      // ),
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        AssetsManager.images.logoLabeled.path,
                        height: 88.5,
                        width: 192,
                      ),
                    ),
                  ),
                  // const SizedBox(height: Dimensions.space48),
                  Center(
                    child: Text(
                      widget.title.tr(),
                      style: context.headlineSmall?.copyWith(
                        color: Palette.primary,
                        fontSize: 24,
                        fontFamily: FontFamily.alexandria,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  if (widget.subTitle != null) ...<Widget>[
                    const SizedBox(height: Dimensions.space8),
                    Center(
                      child: Text(
                        widget.subTitle?.tr() ?? "",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: context.titleSmall?.copyWith(
                          fontSize: 15,
                          color: Palette.fontColor,
                          fontFamily: FontFamily.alexandria,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: Dimensions.space24),
                  ...widget.content,
                  const SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
