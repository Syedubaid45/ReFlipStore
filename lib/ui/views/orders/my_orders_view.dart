import 'package:flutter/material.dart';
import 'package:reflip_store/ui/widgets/app_header.dart';
import 'package:reflip_store/ui/widgets/paymentflow_productcard.dart';
import 'package:stacked/stacked.dart';
import 'my_orders_viewmodel.dart';

class MyOrdersView extends StackedView<MyOrdersViewModel> {
  const MyOrdersView({super.key});

  @override
  Widget builder(
    BuildContext context,
    MyOrdersViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              AppHeader(
                title: "My Orders",
                onBack: () {
                  viewModel.goBack();
                },
                onMenuTap: () {
                  viewModel.gotoSideBar();
                },
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ProductCardPayment(
                      title: "Nike Air Max 270",
                      subtitle: "Men’s Running Shoes",
                      price: "₹ 7,499",
                      imageUrl:
                          "https://images.unsplash.com/photo-1519677100203-a0e668c92439?auto=format&fit=crop&w=500&q=60",
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  MyOrdersViewModel viewModelBuilder(BuildContext context) =>
      MyOrdersViewModel();
}
