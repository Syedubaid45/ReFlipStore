import 'package:reflip_store/services/paymentflow_services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:reflip_store/models/product_model.dart';

class PurchaseViewModel extends BaseViewModel {
  final Product product;
  final _navigationService = locator<NavigationService>();
  final _flowService = locator<PaymentFlowService>();

  PurchaseViewModel(this.product) {
    _flowService.setStep(0);
  }

  String get shippingAddress =>
      "Alice Johnson\n123 Main Street\nHialeah, FL - 33012\nPh: +1-561-230-0033";

  int get shippingFee => 150;

  int get total {
    final priceInt =
        int.tryParse(product.price.replaceAll(RegExp(r'[^0-9]'), "")) ?? 0;
    return priceInt + shippingFee;
  }

  int get currentIndex => _flowService.currentStep;

  void proceedToPayment() {
    _flowService.setStep(1);
    _navigationService.navigateTo(
      Routes.paymentView,
      arguments: PaymentViewArguments(product: product),
    );
  }

  void goBack() {
    _navigationService.back();
  }
}
