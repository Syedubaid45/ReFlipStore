// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i15;
import 'package:flutter/material.dart';
import 'package:reflip_store/models/product_model.dart' as _i16;
import 'package:reflip_store/ui/views/account/account_view.dart' as _i12;
import 'package:reflip_store/ui/views/auth/login_view.dart' as _i3;
import 'package:reflip_store/ui/views/auth/signup_view.dart' as _i4;
import 'package:reflip_store/ui/views/home/home_view.dart' as _i5;
import 'package:reflip_store/ui/views/home/home_viewmodel.dart' as _i17;
import 'package:reflip_store/ui/views/home/tabs/liked_items_tab/likeditemTab_view.dart'
    as _i14;
import 'package:reflip_store/ui/views/listings/my_listings_view.dart' as _i11;
import 'package:reflip_store/ui/views/order_confirmation/order_confirmation_view.dart'
    as _i9;
import 'package:reflip_store/ui/views/orders/my_orders_view.dart' as _i10;
import 'package:reflip_store/ui/views/payment/payment_view.dart' as _i8;
import 'package:reflip_store/ui/views/product/product_detail_view.dart' as _i6;
import 'package:reflip_store/ui/views/purchase/purchase_form_view.dart' as _i7;
import 'package:reflip_store/ui/views/sidebar/sidebar_view.dart' as _i13;
import 'package:reflip_store/ui/views/splash/splash_view.dart' as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i18;

class Routes {
  static const splashView = '/';

  static const loginView = '/login-view';

  static const signupView = '/signup-view';

  static const homeView = '/home-view';

  static const productDetailView = '/product-detail-view';

  static const purchaseView = '/purchase-view';

  static const paymentView = '/payment-view';

  static const orderConfirmationView = '/order-confirmation-view';

  static const myOrdersView = '/my-orders-view';

  static const myListingsView = '/my-listings-view';

  static const accountView = '/account-view';

  static const sidebarView = '/sidebar-view';

  static const likedItemsView = '/liked-items-view';

  static const all = <String>{
    splashView,
    loginView,
    signupView,
    homeView,
    productDetailView,
    purchaseView,
    paymentView,
    orderConfirmationView,
    myOrdersView,
    myListingsView,
    accountView,
    sidebarView,
    likedItemsView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(Routes.splashView, page: _i2.SplashView),
    _i1.RouteDef(Routes.loginView, page: _i3.LoginView),
    _i1.RouteDef(Routes.signupView, page: _i4.SignupView),
    _i1.RouteDef(Routes.homeView, page: _i5.HomeView),
    _i1.RouteDef(Routes.productDetailView, page: _i6.ProductDetailView),
    _i1.RouteDef(Routes.purchaseView, page: _i7.PurchaseView),
    _i1.RouteDef(Routes.paymentView, page: _i8.PaymentView),
    _i1.RouteDef(Routes.orderConfirmationView, page: _i9.OrderConfirmationView),
    _i1.RouteDef(Routes.myOrdersView, page: _i10.MyOrdersView),
    _i1.RouteDef(Routes.myListingsView, page: _i11.MyListingsView),
    _i1.RouteDef(Routes.accountView, page: _i12.AccountView),
    _i1.RouteDef(Routes.sidebarView, page: _i13.SidebarView),
    _i1.RouteDef(Routes.likedItemsView, page: _i14.LikedItemsView),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      final args = data.getArgs<SplashViewArguments>(
        orElse: () => const SplashViewArguments(),
      );
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i2.SplashView(key: args.key),
        settings: data,
      );
    },
    _i3.LoginView: (data) {
      final args = data.getArgs<LoginViewArguments>(
        orElse: () => const LoginViewArguments(),
      );
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i3.LoginView(key: args.key),
        settings: data,
      );
    },
    _i4.SignupView: (data) {
      final args = data.getArgs<SignupViewArguments>(
        orElse: () => const SignupViewArguments(),
      );
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.SignupView(key: args.key),
        settings: data,
      );
    },
    _i5.HomeView: (data) {
      final args = data.getArgs<HomeViewArguments>(
        orElse: () => const HomeViewArguments(),
      );
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.HomeView(key: args.key),
        settings: data,
      );
    },
    _i6.ProductDetailView: (data) {
      final args = data.getArgs<ProductDetailViewArguments>(
        orElse: () => const ProductDetailViewArguments(),
      );
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i6.ProductDetailView(key: args.key),
        settings: data,
      );
    },
    _i7.PurchaseView: (data) {
      final args = data.getArgs<PurchaseViewArguments>(nullOk: false);
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i7.PurchaseView(key: args.key, product: args.product),
        settings: data,
      );
    },
    _i8.PaymentView: (data) {
      final args = data.getArgs<PaymentViewArguments>(nullOk: false);
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i8.PaymentView(key: args.key, product: args.product),
        settings: data,
      );
    },
    _i9.OrderConfirmationView: (data) {
      final args = data.getArgs<OrderConfirmationViewArguments>(nullOk: false);
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.OrderConfirmationView(
          key: args.key,
          product: args.product,
          totalAmount: args.totalAmount,
        ),
        settings: data,
      );
    },
    _i10.MyOrdersView: (data) {
      final args = data.getArgs<MyOrdersViewArguments>(
        orElse: () => const MyOrdersViewArguments(),
      );
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i10.MyOrdersView(key: args.key),
        settings: data,
      );
    },
    _i11.MyListingsView: (data) {
      final args = data.getArgs<MyListingsViewArguments>(
        orElse: () => const MyListingsViewArguments(),
      );
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.MyListingsView(key: args.key),
        settings: data,
      );
    },
    _i12.AccountView: (data) {
      final args = data.getArgs<AccountViewArguments>(
        orElse: () => const AccountViewArguments(),
      );
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i12.AccountView(key: args.key),
        settings: data,
      );
    },
    _i13.SidebarView: (data) {
      final args = data.getArgs<SidebarViewArguments>(
        orElse: () => const SidebarViewArguments(),
      );
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i13.SidebarView(key: args.key),
        settings: data,
      );
    },
    _i14.LikedItemsView: (data) {
      final args = data.getArgs<LikedItemsViewArguments>(nullOk: false);
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i14.LikedItemsView(
          key: args.key,
          homeViewModel: args.homeViewModel,
        ),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class SplashViewArguments {
  const SplashViewArguments({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SplashViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class LoginViewArguments {
  const LoginViewArguments({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant LoginViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class SignupViewArguments {
  const SignupViewArguments({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SignupViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class HomeViewArguments {
  const HomeViewArguments({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant HomeViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class ProductDetailViewArguments {
  const ProductDetailViewArguments({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant ProductDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class PurchaseViewArguments {
  const PurchaseViewArguments({this.key, required this.product});

  final _i15.Key? key;

  final _i16.Product product;

  @override
  String toString() {
    return '{"key": "$key", "product": "$product"}';
  }

  @override
  bool operator ==(covariant PurchaseViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.product == product;
  }

  @override
  int get hashCode {
    return key.hashCode ^ product.hashCode;
  }
}

class PaymentViewArguments {
  const PaymentViewArguments({this.key, required this.product});

  final _i15.Key? key;

  final _i16.Product product;

  @override
  String toString() {
    return '{"key": "$key", "product": "$product"}';
  }

  @override
  bool operator ==(covariant PaymentViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.product == product;
  }

  @override
  int get hashCode {
    return key.hashCode ^ product.hashCode;
  }
}

class OrderConfirmationViewArguments {
  const OrderConfirmationViewArguments({
    this.key,
    required this.product,
    required this.totalAmount,
  });

  final _i15.Key? key;

  final _i16.Product product;

  final int totalAmount;

  @override
  String toString() {
    return '{"key": "$key", "product": "$product", "totalAmount": "$totalAmount"}';
  }

  @override
  bool operator ==(covariant OrderConfirmationViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.product == product &&
        other.totalAmount == totalAmount;
  }

  @override
  int get hashCode {
    return key.hashCode ^ product.hashCode ^ totalAmount.hashCode;
  }
}

class MyOrdersViewArguments {
  const MyOrdersViewArguments({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant MyOrdersViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class MyListingsViewArguments {
  const MyListingsViewArguments({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant MyListingsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class AccountViewArguments {
  const AccountViewArguments({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant AccountViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class SidebarViewArguments {
  const SidebarViewArguments({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SidebarViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class LikedItemsViewArguments {
  const LikedItemsViewArguments({this.key, required this.homeViewModel});

  final _i15.Key? key;

  final _i17.HomeViewModel homeViewModel;

  @override
  String toString() {
    return '{"key": "$key", "homeViewModel": "$homeViewModel"}';
  }

  @override
  bool operator ==(covariant LikedItemsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.homeViewModel == homeViewModel;
  }

  @override
  int get hashCode {
    return key.hashCode ^ homeViewModel.hashCode;
  }
}

extension NavigatorStateExtension on _i18.NavigationService {
  Future<dynamic> navigateToSplashView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.splashView,
      arguments: SplashViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToLoginView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.loginView,
      arguments: LoginViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToSignupView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.signupView,
      arguments: SignupViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToHomeView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.homeView,
      arguments: HomeViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToProductDetailView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.productDetailView,
      arguments: ProductDetailViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToPurchaseView({
    _i15.Key? key,
    required _i16.Product product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.purchaseView,
      arguments: PurchaseViewArguments(key: key, product: product),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToPaymentView({
    _i15.Key? key,
    required _i16.Product product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.paymentView,
      arguments: PaymentViewArguments(key: key, product: product),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToOrderConfirmationView({
    _i15.Key? key,
    required _i16.Product product,
    required int totalAmount,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.orderConfirmationView,
      arguments: OrderConfirmationViewArguments(
        key: key,
        product: product,
        totalAmount: totalAmount,
      ),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToMyOrdersView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.myOrdersView,
      arguments: MyOrdersViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToMyListingsView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.myListingsView,
      arguments: MyListingsViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToAccountView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.accountView,
      arguments: AccountViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToSidebarView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.sidebarView,
      arguments: SidebarViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToLikedItemsView({
    _i15.Key? key,
    required _i17.HomeViewModel homeViewModel,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return navigateTo<dynamic>(
      Routes.likedItemsView,
      arguments: LikedItemsViewArguments(
        key: key,
        homeViewModel: homeViewModel,
      ),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithSplashView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.splashView,
      arguments: SplashViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithLoginView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.loginView,
      arguments: LoginViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithSignupView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.signupView,
      arguments: SignupViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithHomeView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.homeView,
      arguments: HomeViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithProductDetailView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.productDetailView,
      arguments: ProductDetailViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithPurchaseView({
    _i15.Key? key,
    required _i16.Product product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.purchaseView,
      arguments: PurchaseViewArguments(key: key, product: product),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithPaymentView({
    _i15.Key? key,
    required _i16.Product product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.paymentView,
      arguments: PaymentViewArguments(key: key, product: product),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithOrderConfirmationView({
    _i15.Key? key,
    required _i16.Product product,
    required int totalAmount,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.orderConfirmationView,
      arguments: OrderConfirmationViewArguments(
        key: key,
        product: product,
        totalAmount: totalAmount,
      ),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithMyOrdersView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.myOrdersView,
      arguments: MyOrdersViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithMyListingsView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.myListingsView,
      arguments: MyListingsViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithAccountView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.accountView,
      arguments: AccountViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithSidebarView({
    _i15.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.sidebarView,
      arguments: SidebarViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> replaceWithLikedItemsView({
    _i15.Key? key,
    required _i17.HomeViewModel homeViewModel,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  }) async {
    return replaceWith<dynamic>(
      Routes.likedItemsView,
      arguments: LikedItemsViewArguments(
        key: key,
        homeViewModel: homeViewModel,
      ),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }
}
