import 'package:flutter/material.dart';
import 'package:reflip_store/models/product_model.dart';
import 'package:reflip_store/ui/views/purchase/widgets/ShippingAdd_card.dart';
import 'package:reflip_store/ui/views/purchase/widgets/invoice_detailCard.dart';
import 'package:reflip_store/ui/widgets/app_header2.dart';
import 'package:reflip_store/ui/widgets/paymentflow_productcard.dart';
import 'package:reflip_store/ui/widgets/paymentflow_button.dart';
import 'package:reflip_store/ui/widgets/progress_stepper.dart';
import 'package:stacked/stacked.dart';
import 'purchase_form_viewmodel.dart';

class PurchaseView extends StackedView<PurchaseViewModel> {
  final Product product;

  const PurchaseView({super.key, required this.product});

  @override
  Widget builder(
    BuildContext context,
    PurchaseViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
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

              ShippingAddressCard(address: viewModel.shippingAddress),
              const SizedBox(height: 20),

              InvoiceDetailsCard(
                productPrice: product.price,
                shippingFee: viewModel.shippingFee,
                total: viewModel.total,
              ),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: paymentFlowButton(
          text: "Proceed To Payment",
          onPressed: viewModel.proceedToPayment,
        ),
      ),
    );
  }

  @override
  PurchaseViewModel viewModelBuilder(BuildContext context) =>
      PurchaseViewModel(product);
}
