import 'package:ewan/core/core.dart';
import 'package:flutter/material.dart';

void goToMyTrips(BuildContext context) {
  context.router.root.navigate(const BaseRoute());
  context.router.root
      .innerRouterOf<TabsRouter>(BaseRoute.name)
      ?.setActiveIndex(2); // Trips
}
