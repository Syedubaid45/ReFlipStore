import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:reflip_store/models/product_model.dart';
import 'package:reflip_store/services/product_selection_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final _selectionService = locator<ProductSelectionService>();
  final _navigationService = locator<NavigationService>();

  List<Product> _products = [
    Product(
      id: '1',
      title: "Wireless Headphones",
      subtitle: "Noise-cancelling over-ear headphones",
      image:
          "https://images.unsplash.com/photo-1519677100203-a0e668c92439?auto=format&fit=crop&w=500&q=60",
      price: "\$99",
      userName: "Alice Johnson",
      userAvatar: "https://randomuser.me/api/portraits/women/44.jpg",
    ),
    Product(
      id: '2',
      title: "Smartwatch",
      subtitle: "Fitness tracking and notifications",
      image:
          "https://images.unsplash.com/photo-1603791440384-56cd371ee9a7?auto=format&fit=crop&w=500&q=60",
      price: "\$149",
      userName: "David Lee",
      userAvatar: "https://randomuser.me/api/portraits/men/32.jpg",
    ),
    Product(
      id: '3',
      title: "Gaming Chair",
      subtitle: "Ergonomic chair for long gaming sessions",
      image:
          "https://images.unsplash.com/photo-1519677100203-a0e668c92439?auto=format&fit=crop&w=500&q=60",
      price: "\$249",
      userName: "Sarah Kim",
      userAvatar: "https://randomuser.me/api/portraits/women/68.jpg",
    ),
    Product(
      id: '4',
      title: "Bluetooth Speaker",
      subtitle: "Portable speaker with deep bass",
      image:
          "https://images.unsplash.com/photo-1519677100203-a0e668c92439?auto=format&fit=crop&w=500&q=60",
      price: "\$59",
      userName: "Michael Brown",
      userAvatar: "https://randomuser.me/api/portraits/men/45.jpg",
    ),
    Product(
      id: '5',
      title: "Digital Camera",
      subtitle: "Mirrorless camera for photography enthusiasts",
      image:
          "https://images.unsplash.com/photo-1519677100203-a0e668c92439?auto=format&fit=crop&w=500&q=60",
      price: "\$599",
      userName: "Emily Davis",
      userAvatar: "https://randomuser.me/api/portraits/women/22.jpg",
    ),
    Product(
      id: '6',
      title: "Electric Guitar",
      subtitle: "Classic design with great sound quality",
      image:
          "https://images.unsplash.com/photo-1519677100203-a0e668c92439?auto=format&fit=crop&w=500&q=60",
      price: "\$399",
      userName: "John Smith",
      userAvatar: "https://randomuser.me/api/portraits/men/1.jpg",
    ),
  ];

  List<Product> get products => _products;

  void toggleFavorite(Product product) {
    product.isFavorite = !product.isFavorite;
    notifyListeners();
  }

  List<Product> get likedProducts =>
      products.where((p) => p.isFavorite).toList();

  void onProductTapped(Product product) {
    _selectionService.selectProduct(product);
    _navigationService.navigateTo(Routes.productDetailView);
  }

  void goBack() {
    _navigationService.back();
  }

  void gotoSideBar() {
    _navigationService.navigateToSidebarView();
  }
}
