import 'package:reflip_store/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AccountViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void closeView() {
    _navigationService.back();
  }

  void goToSettings() {
    // Navigate to settings
  }
}
