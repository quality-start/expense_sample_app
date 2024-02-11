// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    InputBalanceRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InputBalancePage(),
      );
    },
    InputBalanceRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InputBalanceRouterPage(),
      );
    },
    MonthlySummaryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MonthlySummaryPage(),
      );
    },
    MonthlySummaryRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MonthlySummaryRouterPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingPage(),
      );
    },
    SettingRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingRouterPage(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InputBalancePage]
class InputBalanceRoute extends PageRouteInfo<void> {
  const InputBalanceRoute({List<PageRouteInfo>? children})
      : super(
          InputBalanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'InputBalanceRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InputBalanceRouterPage]
class InputBalanceRouterRoute extends PageRouteInfo<void> {
  const InputBalanceRouterRoute({List<PageRouteInfo>? children})
      : super(
          InputBalanceRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'InputBalanceRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MonthlySummaryPage]
class MonthlySummaryRoute extends PageRouteInfo<void> {
  const MonthlySummaryRoute({List<PageRouteInfo>? children})
      : super(
          MonthlySummaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'MonthlySummaryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MonthlySummaryRouterPage]
class MonthlySummaryRouterRoute extends PageRouteInfo<void> {
  const MonthlySummaryRouterRoute({List<PageRouteInfo>? children})
      : super(
          MonthlySummaryRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'MonthlySummaryRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute({List<PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingRouterPage]
class SettingRouterRoute extends PageRouteInfo<void> {
  const SettingRouterRoute({List<PageRouteInfo>? children})
      : super(
          SettingRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
