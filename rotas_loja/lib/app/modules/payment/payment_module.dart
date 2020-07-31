import 'package:flutter_modular/flutter_modular.dart';
import 'payment_controller.dart';
import 'payment_page.dart';
import 'store/payment_store.dart';

class PaymentModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PaymentController()),
        Bind((i) => PaymentStore()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PaymentPage()),
      ];

  static Inject get to => Inject<PaymentModule>.of();
}
