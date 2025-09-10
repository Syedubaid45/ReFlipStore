import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:reflip_store/models/product_model.dart';
import 'package:reflip_store/services/product_selection_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _productSelectionService = locator<ProductSelectionService>();

  Product? get product => _productSelectionService.selectedProduct;

  void navigateBack() => _navigationService.back();

  void navigateToPurchase() {
    if (product != null) {
      _navigationService.navigateTo(
        Routes.purchaseView,
        arguments: PurchaseViewArguments(product: product!),
      );
    }
  }

  void saveItem() {
    print("Item saved: ${product?.title}");
  }

  Future<void> searchOnGoogle() async {
    if (product == null) return;

    final query = Uri.encodeComponent(product!.title);
    final url = Uri.parse("https://www.google.com/search?q=$query");

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print("Could not launch $url");
    }
  }

  bool _isExpanded = false;
  bool get isExpanded => _isExpanded;

  void toggleDescription() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }
}
