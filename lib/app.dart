import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.ArithemticRoute,
      routes: AppRoute.getApplicationRoute(),
    );
  }
}
