import 'package:reflip_store/models/product_model.dart';
import 'package:stacked/stacked.dart';

class ProductSelectionService with ListenableServiceMixin {
  Product? _selectedProduct;

  Product? get selectedProduct => _selectedProduct;

  void selectProduct(Product product) {
    _selectedProduct = product;
    notifyListeners();
  }
}
