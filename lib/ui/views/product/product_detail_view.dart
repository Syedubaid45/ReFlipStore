import 'package:flutter/material.dart';
import 'package:reflip_store/ui/views/product/widgets/BottomActionBar%20.dart';
import 'package:reflip_store/ui/views/product/widgets/ProductActions%20.dart';
import 'package:reflip_store/ui/views/product/widgets/ProductHeaderImage.dart';
import 'package:reflip_store/ui/views/product/widgets/ProductProceSection.dart';
import 'package:reflip_store/ui/views/product/widgets/ProductTitleRow%20.dart';
import 'package:reflip_store/ui/views/product/widgets/SimilarProductsList%20.dart';
import 'package:reflip_store/ui/widgets/app_header2.dart';
import 'package:stacked/stacked.dart';
import 'product_detail_viewmodel.dart';

class ProductDetailView extends StackedView<ProductDetailViewModel> {
  const ProductDetailView({super.key});

  @override
  Widget builder(
    BuildContext context,
    ProductDetailViewModel viewModel,
    Widget? child,
  ) {
    final product = viewModel.product!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppHeader2(onBack: viewModel.navigateBack),

              const SizedBox(height: 16),

              ProductHeaderImage(imageUrl: product.image),

              const SizedBox(height: 20),

              ProductTitleRow(title: product.title),

              const SizedBox(height: 8),

              ProductPriceSection(
                price: product.price,
                subtitle: product.subtitle,
              ),

              const SizedBox(height: 16),

              ProductActions(onSearch: viewModel.searchOnGoogle),

              const SizedBox(height: 24),

              const SimilarProductsList(),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomActionBar(
        onSave: viewModel.saveItem,
        onBuy: viewModel.navigateToPurchase,
      ),
    );
  }

  @override
  ProductDetailViewModel viewModelBuilder(BuildContext context) =>
      ProductDetailViewModel();
}
