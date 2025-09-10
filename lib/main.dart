import 'package:flutter/material.dart';
import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:reflip_store/ui/views/account/account_view.dart';
import 'package:reflip_store/ui/views/home/home_view.dart';
import 'package:reflip_store/ui/views/listings/my_listings_view.dart';
import 'package:reflip_store/ui/views/sidebar/sidebar_view.dart';
import 'package:reflip_store/ui/views/splash/splash_view.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      title: 'Reflip Store',
      home: SplashView(),
    );
  }
}
