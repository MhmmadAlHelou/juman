import 'package:flutter/material.dart';

mixin MapSheetController<T extends StatefulWidget> on State<T> {
  final DraggableScrollableController sheetController =
      DraggableScrollableController();
  ScrollController? innerScrollController;
  bool showMapButton = false;

  void onSheetChanged() {
    final show =
        sheetController.size >
        0.5; // The same point of medium/large snap you have
    if (show != showMapButton) {
      setState(() => showMapButton = show);
    }
  }

  Future<void> collapseSheetToMap() async {
    if (innerScrollController?.hasClients ?? false) {
      // innerScrollController?.jumpTo(0);
      await innerScrollController!.animateTo(
        0,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    }
    await sheetController.animateTo(
      0.09,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void disposeSheetController() {
    sheetController.removeListener(onSheetChanged);
    sheetController.dispose();
  }
}
