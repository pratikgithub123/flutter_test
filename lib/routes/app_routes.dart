import 'package:flutter_testing/view/Output_view.dart';
import 'package:flutter_testing/view/arithmetic_view.dart';

class AppRoute {
  AppRoute._();

  static const String ArithemticRoute = '/ArithemticView';
  static const String OutputRoute = '/OutputView';

  static getApplicationRoute() {
    return {
      ArithemticRoute: (context) => const ArithemticView(),
    OutputRoute: (context) => const OutputView()};
    
  }
}
