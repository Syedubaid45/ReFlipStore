import 'package:device_frame_plus/device_frame_plus.dart';
import 'package:flutter/material.dart';
import 'package:reflip_store/ui/widgets/app_header.dart';
import 'package:reflip_store/ui/widgets/paymentflow_productcard.dart';
import 'package:stacked/stacked.dart';
import 'my_listings_viewmodel.dart';

class MyListingsView extends StackedView<MyListingsViewModel> {
  const MyListingsView({super.key});

  @override
  Widget builder(
    BuildContext context,
    MyListingsViewModel viewModel,
    Widget? child,
  ) {
    return DeviceFrame(
      device: Devices.ios.iPhone13ProMax,
      isFrameVisible: true,
      orientation: Orientation.portrait,
      screen: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                AppHeader(
                  title: "My Listings",
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
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ProductCardPayment(
                        title: "iPhone 12 Pro",
                        subtitle: "256GB, Pacific Blue",
                        price: "₹ 85,000",
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
      ),
    );
  }

  @override
  MyListingsViewModel viewModelBuilder(BuildContext context) =>
      MyListingsViewModel();
}
