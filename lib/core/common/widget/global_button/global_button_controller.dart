part of 'global_button_widget.dart';

class GlobalButtonController extends ValueNotifier<Widget?> {
  GlobalButtonController() : super(null);

  void changeToLoader() {
    value = const SizedBox(
      height: 30,
      width: 30,
      child: CircularProgressIndicator(color: Palette.white, strokeWidth: 2),
    );
    notifyListeners();
  }

  void changeContent(Widget? widget) {
    value = widget;
    notifyListeners();
  }
}
