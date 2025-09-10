import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'dart:async';

class SplashViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void setTimer() {
    Timer(
      Duration(seconds: 3),
      () => _navigationService.replaceWithLoginView(),
    );
  }
}
