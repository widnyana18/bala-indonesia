import 'package:auto_route/auto_route.dart';
import 'package:bala_indonesia/persentation/components/materials.dart';
import 'package:bala_indonesia/persentation/routes/route_guard.dart';
import 'package:bala_indonesia/persentation/screens/cart/widgets/widgets.dart';
import 'package:bala_indonesia/persentation/screens/screens.dart';
import 'package:flutter/material.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      path: '/',
    ),
    AutoRoute(
      path: '/product/:prodName',
      page: CatalogPage,
    ),
    CustomRoute(
      path: '/profile',
      page: UserProfile,
      customRouteBuilder: myCustomRouteBuilder,
      guards: [AuthGuard],
    ),
    AutoRoute(
      path: '/:cartId',
      page: CartPage,
      guards: [AuthGuard],
      children: [
        AutoRoute(
          path: 'cart',
          page: ProductOrder,
          initial: true,
        ),
        AutoRoute(
          path: 'address',
          page: AddressSection,
        ),
        AutoRoute(
          path: 'shipping',
          page: ShippingSection,
        ),
        AutoRoute(
          path: 'payment',
          page: PaymentSection,
        ),
        AutoRoute(
          path: 'order',
          page: OrderSection,
        ),
      ],
    ),
    AutoRoute(
      path: '/about',
      page: AboutUsPage,
    ),
    AutoRoute(
      path: '/blogs/:blogName',
      page: BlogsPage,
    ),
    AutoRoute(
      path: '/careers',
      page: CareersPage,
    ),
    AutoRoute(
      path: '/open-job',
      page: JobDeskPage,
    ),
    AutoRoute(
      path: '/order-history',
      page: OrderHistoryPage,
    ),
    AutoRoute<bool>(
      path: '/login',
      page: AuthAccountPage,
      name: 'AuthenticateUserRoute',
      children: [
        AutoRoute(
          path: '',
          page: LoginForm,
          initial: true,
        ),
        AutoRoute(
          path: 'send-email',
          page: SendEmailForm,
        ),
        AutoRoute(
          path: 'reset_password/:uid',
          page: ResetPasswordForm,
          name: 'ResetPswFromLogin',
        ),
      ],
    ),
    AutoRoute(
      path: '/signup',
      page: SignupForm,
    ),
    AutoRoute(
      path: '/add-address',
      page: UserAddressForm,
    ),
    AutoRoute(
      path: '/add-credit',
      page: CreditForm,
    ),
    AutoRoute(
      path: '/register-job',
      page: RegisterJobForm,
    ),
    AutoRoute(path: '*', page: EmptyRouterPage),
  ],
)
class $AppRouter {}

Route<T> myCustomRouteBuilder<T>(
    BuildContext context, Widget child, CustomPage<T> page) {
  return PageRouteBuilder(
    fullscreenDialog: page.fullscreenDialog,
    barrierDismissible: false,
    settings: page,
    pageBuilder: (_, __, ___) => child,
  );
}
