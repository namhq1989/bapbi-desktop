// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:bapbi_app/component/authentication/ui/sign_in.dart' as _i7;
import 'package:bapbi_app/component/english/ui/dashboard.dart' as _i1;
import 'package:bapbi_app/component/health/ui/dashboard.dart' as _i2;
import 'package:bapbi_app/component/layout/layout.dart' as _i4;
import 'package:bapbi_app/invoice.dart' as _i3;
import 'package:bapbi_app/order.dart' as _i5;
import 'package:bapbi_app/product.dart' as _i6;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    EnglishDashboardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EnglishDashboardScreen(),
      );
    },
    HealthDashboardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HealthDashboardScreen(),
      );
    },
    InvoiceRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.InvoiceScreen(),
      );
    },
    LayoutRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LayoutScreen(),
      );
    },
    OrderRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OrderScreen(),
      );
    },
    ProductRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProductScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignInScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.EnglishDashboardScreen]
class EnglishDashboardRoute extends _i8.PageRouteInfo<void> {
  const EnglishDashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          EnglishDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnglishDashboardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HealthDashboardScreen]
class HealthDashboardRoute extends _i8.PageRouteInfo<void> {
  const HealthDashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HealthDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'HealthDashboardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.InvoiceScreen]
class InvoiceRoute extends _i8.PageRouteInfo<void> {
  const InvoiceRoute({List<_i8.PageRouteInfo>? children})
      : super(
          InvoiceRoute.name,
          initialChildren: children,
        );

  static const String name = 'InvoiceRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LayoutScreen]
class LayoutRoute extends _i8.PageRouteInfo<void> {
  const LayoutRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'LayoutRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OrderScreen]
class OrderRoute extends _i8.PageRouteInfo<void> {
  const OrderRoute({List<_i8.PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProductScreen]
class ProductRoute extends _i8.PageRouteInfo<void> {
  const ProductRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SignInScreen]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
