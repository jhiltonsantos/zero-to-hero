
import 'payment_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'payment_page.dart';

class PaymentModule extends ChildModule {
  @override
  List<Bind> get binds => [

        Bind((i) => PaymentController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PaymentPage()),
      ];

  static Inject get to => Inject<PaymentModule>.of();
}
