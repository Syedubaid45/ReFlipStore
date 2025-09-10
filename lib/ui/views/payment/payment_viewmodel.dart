import 'package:flutter/material.dart';
import 'package:reflip_store/services/paymentflow_services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:reflip_store/models/product_model.dart';

class PaymentViewModel extends BaseViewModel {
  final Product product;
  final _navigationService = locator<NavigationService>();
  final _flowService = locator<PaymentFlowService>();

  PaymentViewModel(this.product) {
    _flowService.setStep(1);
  }

  int selectedCardIndex = 0;

  final TextEditingController cvvController = TextEditingController();

  int get shippingFee => 150;

  int get total {
    final priceInt =
        int.tryParse(product.price.replaceAll(RegExp(r'[^0-9]'), "")) ?? 0;
    return priceInt + shippingFee;
  }

  int get currentIndex => _flowService.currentStep;

  void proceedToPayment() {
    final cvv = cvvController.text;
    if (cvv.length != 3) return; // basic CVV validation

    _flowService.setStep(2); // move to confirmation

    _navigationService.navigateTo(
      Routes.orderConfirmationView,
      arguments: OrderConfirmationViewArguments(
        product: product,
        totalAmount: total,
      ),
    );
  }

  @override
  void dispose() {
    cvvController.dispose();
    super.dispose();
  }

  void selectCard(int index) {
    selectedCardIndex = index;
    notifyListeners();
  }

  void goBack() {
    _navigationService.back();
  }
}
