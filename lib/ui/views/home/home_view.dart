import 'package:device_frame_plus/device_frame_plus.dart';
import 'package:flutter/material.dart';
import 'package:reflip_store/ui/views/home/tabs/liked_items_tab/likeditemTab_view.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';
import 'tabs/home_tab/hometab_view.dart';
import 'tabs/explore_tab/exploretab_view.dart';
import 'tabs/messages_tab/messagesTab_view.dart';
import 'package:reflip_store/ui/widgets/custombottomnav_widget.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return DeviceFrame(
      device: Devices.ios.iPhone13ProMax,
      isFrameVisible: true,
      orientation: Orientation.portrait,
      screen: Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: viewModel.currentIndex,
          children: [
            HometabView(homeViewModel: viewModel),
            ExploreTabView(homeViewModel: viewModel),
            Center(child: Text("Camera Not Implemented")),
            LikedItemsView(homeViewModel: viewModel),
            MessagesTabView(),
          ],
        ),
        bottomNavigationBar: CustomBottomNav(
          currentIndex: viewModel.currentIndex,
          onTap: viewModel.setIndex,
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
