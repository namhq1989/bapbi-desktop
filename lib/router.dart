import 'package:auto_route/auto_route.dart';
import 'package:bapbi_app/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  final bool isAuthenticated = true;

  // @override
  // void onNavigation(NavigationResolver resolver, StackRouter router) {
  //   if (isAuthenticated || resolver.route.name == LoginRoute.name) {
  //     // we continue navigation
  //     resolver.next();
  //   } else {
  //     // else we navigate to the Login page so we get authenticateed

  //     // tip: use resolver.redirect to have the redirected route
  //     // automatically removed from the stack when the resolver is completed
  //     resolver.redirect(
  //       const LoginRoute(),
  //     );
  //   }
  // }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LayoutRoute.page, initial: true, children: [
          AutoRoute(
            page: HomeRoute.page,
            initial: true,
            maintainState: true,
          ),
          AutoRoute(
            page: ProductRoute.page,
            maintainState: true,
          ),
        ]),
        AutoRoute(page: LoginRoute.page),
      ];
}
