import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:reflip_store/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SidebarViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void closeSidebar() {
    _navigationService.navigateToHomeView();
  }

  void goToAccount() {
    _navigationService.navigateToAccountView();
  }

  void goToOrders() {
    _navigationService.navigateToMyOrdersView();
  }

  void goToListings() {
    _navigationService.navigateToMyListingsView();
  }

  void goToLiked() {
    _navigationService.navigateToLikedItemsView(homeViewModel: HomeViewModel());
  }

  void giveFeedback() {
    // Handle feedback action
  }

  void signOut() {
    // Handle sign out
  }
}
