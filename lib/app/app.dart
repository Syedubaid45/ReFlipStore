import 'package:reflip_store/services/api_service.dart';
import 'package:reflip_store/services/auth_service.dart';
import 'package:reflip_store/services/paymentflow_services.dart';
import 'package:reflip_store/services/product_selection_service.dart';
import 'package:reflip_store/ui/views/account/account_view.dart';
import 'package:reflip_store/ui/views/auth/login_view.dart';
import 'package:reflip_store/ui/views/auth/signup_view.dart';
import 'package:reflip_store/ui/views/home/home_view.dart';
import 'package:reflip_store/ui/views/home/tabs/liked_items_tab/likeditemTab_view.dart';
import 'package:reflip_store/ui/views/listings/my_listings_view.dart';
import 'package:reflip_store/ui/views/order_confirmation/order_confirmation_view.dart';
import 'package:reflip_store/ui/views/orders/my_orders_view.dart';
import 'package:reflip_store/ui/views/payment/payment_view.dart';
import 'package:reflip_store/ui/views/product/product_detail_view.dart';
import 'package:reflip_store/ui/views/purchase/purchase_form_view.dart';
import 'package:reflip_store/ui/views/sidebar/sidebar_view.dart';
import 'package:reflip_store/ui/views/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: ProductDetailView),
    MaterialRoute(page: PurchaseView),
    MaterialRoute(page: PaymentView),
    MaterialRoute(page: OrderConfirmationView),
    MaterialRoute(page: MyOrdersView),
    MaterialRoute(page: MyListingsView),
    MaterialRoute(page: AccountView),
    MaterialRoute(page: SidebarView),
    MaterialRoute(page: LikedItemsView),
  ],
  dependencies: [
    LazySingleton(classType: ProductSelectionService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ApiService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: PaymentFlowService),
  ],
)
class App {}
