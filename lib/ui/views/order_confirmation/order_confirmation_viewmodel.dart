import 'package:reflip_store/services/paymentflow_services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:reflip_store/models/product_model.dart';

class OrderConfirmationViewModel extends BaseViewModel {
  final _flowService = locator<PaymentFlowService>();

  final _navigationService = locator<NavigationService>();
  final Product product;
  final int totalAmount;

  OrderConfirmationViewModel(this.product, this.totalAmount) {
    _flowService.setStep(2);
  }

  int get currentIndex => _flowService.currentStep;

  void navigateBack() => _navigationService.back();

  void navigateToHome() {
    _flowService.reset();
    _navigationService.clearStackAndShow(Routes.homeView);
  }

  String get trackingId => "TRK${DateTime.now().millisecondsSinceEpoch}";
  String get orderId => "ORD${DateTime.now().millisecondsSinceEpoch}";
}
