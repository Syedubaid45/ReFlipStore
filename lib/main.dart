import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:reflip_store/firebase_options.dart';
import 'package:reflip_store/ui/views/splash/splash_view.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
