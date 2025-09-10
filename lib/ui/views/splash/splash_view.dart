import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'splash_viewmodel.dart';

class SplashView extends StackedView<SplashViewModel> {
  const SplashView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SplashViewModel viewModel,
    Widget? child,
  ) {
    final logoHeight = MediaQuery.of(context).size.height * 0.4;
    final logoWidth = MediaQuery.of(context).size.width * 0.4;

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFC1839F), Color(0xffFF5A5F)],
            ),
          ),
          child: Center(
            child: Image(
              image: AssetImage("assets/images/logo.t.png"),
              height: logoHeight,
              width: logoWidth,
            ),
          ),
        ),
      ),
    );
  }

  @override
  SplashViewModel viewModelBuilder(BuildContext context) => SplashViewModel();

  @override
  void onViewModelReady(SplashViewModel viewModel) {
    viewModel.setTimer();
  }
}
