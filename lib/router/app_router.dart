import 'package:auto_route/auto_route.dart';
import 'package:expenses_app/features/balance/input_balance_page.dart';
import 'package:expenses_app/features/home/pages/home_page.dart';
import 'package:expenses_app/features/setting/pages/setting_page.dart';
import 'package:expenses_app/features/summary/pages/monthly_summary_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(page: InputBalanceRoute.page),
            AutoRoute(page: MonthlySummaryRoute.page),
            AutoRoute(
              page: SettingRouterRoute.page,
              children: [
                AutoRoute(
                  page: SettingRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(page: SettingRoute.page),
          ],
        ),
      ];
}

@RoutePage()
class InputBalanceRouterPage extends AutoRouter {
  const InputBalanceRouterPage({super.key});
}

@RoutePage()
class MonthlySummaryRouterPage extends AutoRouter {
  const MonthlySummaryRouterPage({super.key});
}

@RoutePage()
class SettingRouterPage extends AutoRouter {
  const SettingRouterPage({super.key});
}
