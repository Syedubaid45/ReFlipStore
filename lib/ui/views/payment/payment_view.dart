import 'package:device_frame_plus/device_frame_plus.dart';
import 'package:flutter/material.dart';
import 'package:reflip_store/models/product_model.dart';
import 'package:reflip_store/ui/views/payment/widgets/cvv_textfield.dart';
import 'package:reflip_store/ui/views/payment/widgets/payment_details_card.dart';
import 'package:reflip_store/ui/views/payment/widgets/paymentcard_selector.dart';
import 'package:reflip_store/ui/widgets/app_header2.dart';
import 'package:reflip_store/ui/widgets/paymentflow_button.dart';
import 'package:reflip_store/ui/widgets/paymentflow_productcard.dart';
import 'package:reflip_store/ui/widgets/progress_stepper.dart';
import 'package:stacked/stacked.dart';
import 'payment_viewmodel.dart';

class PaymentView extends StackedView<PaymentViewModel> {
  final Product product;

  const PaymentView({super.key, required this.product});

  @override
  PaymentViewModel viewModelBuilder(BuildContext context) =>
      PaymentViewModel(product);

  @override
  Widget builder(
    BuildContext context,
    PaymentViewModel viewModel,
    Widget? child,
  ) {
    final shipping = viewModel.shippingFee;
    final total = viewModel.total;

    return DeviceFrame(
      device: Devices.ios.iPhone13ProMax,
      isFrameVisible: true,
      orientation: Orientation.portrait,
      screen: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  AppHeader2(
                    onBack: () {
                      viewModel.goBack();
                    },
                  ),
                  const SizedBox(height: 30),

                  ProgressStepper(
                    currentIndex: viewModel.currentIndex,
                    itemCount: 3,
                  ),
                  const SizedBox(height: 40),

                  ProductCardPayment(
                    title: viewModel.product.title,
                    subtitle: viewModel.product.subtitle,
                    price: viewModel.product.price,
                    imageUrl: viewModel.product.image,
                  ),

                  const SizedBox(height: 20),

                  PaymentDetailsCard(
                    productPrice: product.price,
                    shippingFee: shipping,
                    total: total,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Select card",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),

                  PaymentCardSelector(
                    selectedIndex: viewModel.selectedCardIndex,
                    onSelect: viewModel.selectCard,
                  ),
                  SizedBox(height: 20),

                  CvvInputField(controller: viewModel.cvvController),
                ],
              ),
            ),
          ),
        ),

        bottomNavigationBar: paymentFlowButton(
          onPressed: viewModel.proceedToPayment,
          text: "Pay Now",
        ),
      ),
    );
  }
}
