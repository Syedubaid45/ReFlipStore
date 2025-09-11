import 'package:device_frame_plus/device_frame_plus.dart';
import 'package:flutter/material.dart';
import 'package:reflip_store/models/product_model.dart';
import 'package:reflip_store/ui/views/order_confirmation/widgets/paymentSuccess_card.dart';
import 'package:reflip_store/ui/widgets/app_header2.dart';
import 'package:reflip_store/ui/widgets/paymentflow_button.dart';
import 'package:reflip_store/ui/widgets/paymentflow_productcard.dart';
import 'package:reflip_store/ui/widgets/progress_stepper.dart';
import 'package:stacked/stacked.dart';
import 'order_confirmation_viewmodel.dart';

class OrderConfirmationView extends StackedView<OrderConfirmationViewModel> {
  final Product product;
  final int totalAmount;

  const OrderConfirmationView({
    super.key,
    required this.product,
    required this.totalAmount,
  });

  @override
  OrderConfirmationViewModel viewModelBuilder(BuildContext context) =>
      OrderConfirmationViewModel(product, totalAmount);

  @override
  Widget builder(
    BuildContext context,
    OrderConfirmationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              AppHeader2(
                onBack: () {
                  viewModel.navigateBack();
                },
              ),
              SizedBox(height: 30),
              ProgressStepper(
                currentIndex: viewModel.currentIndex,
                itemCount: 3,
              ),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Order Confirmed",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              PaymentSuccessCard(totalAmount: totalAmount),
              const SizedBox(height: 40),
              ProductCardPayment(
                backgroundColor: const Color.fromARGB(255, 146, 204, 176),
                title: viewModel.product.title,
                subtitle: viewModel.product.subtitle,
                price: viewModel.product.price,
                imageUrl: viewModel.product.image,
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: paymentFlowButton(
        onPressed: () {
          viewModel.navigateToHome();
        },
        text: "Go to home",
      ),
    );
  }
}
