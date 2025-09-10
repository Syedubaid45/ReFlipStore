import 'package:stacked/stacked.dart';

class PaymentFlowService with ListenableServiceMixin {
  int _currentStep = 0;
  int get currentStep => _currentStep;

  PaymentFlowService() {
    listenToReactiveValues([_currentStep]);
  }

  void setStep(int step) {
    _currentStep = step;
    notifyListeners();
  }

  void nextStep({int maxSteps = 3}) {
    if (_currentStep < maxSteps - 1) {
      _currentStep++;
    }
    notifyListeners();
  }

  void reset() {
    _currentStep = 0;
    notifyListeners();
  }
}
