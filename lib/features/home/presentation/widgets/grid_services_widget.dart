import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';
import '../../home.dart';

class GridServicesWidget extends StatelessWidget {
  final List<ServiceResult> servicesList;
  final bool isView;
  const GridServicesWidget({
    super.key,
    required this.servicesList,
    this.isView = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 1.0,
        ),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: servicesList.length,
        physics: !isView
            ? const NeverScrollableScrollPhysics()
            : const AlwaysScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final ServiceResult result = servicesList[index];
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              // context.pushRoute(
              //   ServiceRoute(serviceData: result, isView: isView),
              // );
            },
            child: Container(
              height: 163,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: Palette.gray.withValues(alpha: 0.1),
                  width: 1,
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Palette.black.withValues(alpha: 0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: NetworkImageWidget(
                        url: result.image ?? "",
                        fit: BoxFit.contain,
                        radius: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
