import 'package:get/get.dart';

import 'package:ujian_kls2/app/modules/berhasil/bindings/berhasil_binding.dart';
import 'package:ujian_kls2/app/modules/berhasil/views/berhasil_view.dart';
import 'package:ujian_kls2/app/modules/checkout/bindings/checkout_binding.dart';
import 'package:ujian_kls2/app/modules/checkout/views/checkout_view.dart';
import 'package:ujian_kls2/app/modules/detail/bindings/detail_binding.dart';
import 'package:ujian_kls2/app/modules/detail/views/detail_view.dart';
import 'package:ujian_kls2/app/modules/forgotpw/bindings/forgotpw_binding.dart';
import 'package:ujian_kls2/app/modules/forgotpw/views/forgotpw_view.dart';
import 'package:ujian_kls2/app/modules/home/bindings/home_binding.dart';
import 'package:ujian_kls2/app/modules/home/views/home_view.dart';
import 'package:ujian_kls2/app/modules/login/bindings/login_binding.dart';
import 'package:ujian_kls2/app/modules/login/views/login_view.dart';
import 'package:ujian_kls2/app/modules/payment/bindings/payment_binding.dart';
import 'package:ujian_kls2/app/modules/payment/views/payment_view.dart';
import 'package:ujian_kls2/app/modules/register/bindings/register_binding.dart';
import 'package:ujian_kls2/app/modules/register/views/register_view.dart';
import 'package:ujian_kls2/app/modules/splashScreen/bindings/splash_screen_binding.dart';
import 'package:ujian_kls2/app/modules/splashScreen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPW,
      page: () => ForgotpwView(),
      binding: ForgotpwBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: _Paths.BERHASIL,
      page: () => BerhasilView(),
      binding: BerhasilBinding(),
    ),
  ];
}
