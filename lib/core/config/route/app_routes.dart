import 'package:flutterassignment/presentation/screen/add_timeline/binding/add_timeline_binding.dart';
import 'package:flutterassignment/presentation/screen/add_timeline/page/add_timeline_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../../presentation/screen/dashboard/binding/dashboard_binding.dart';
import '../../../presentation/screen/dashboard/page/dashboard_screen.dart';

class AppRoute {
  static const String dashboardPage = '/dashboard';
  static const String addTimelinePage = '/add_timeline_page';

  static List<GetPage<dynamic>>? pages = [
    GetPage(
      name: dashboardPage,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: addTimelinePage,
      page: () => const AddTimelineScreen(),
      binding: AddTimelineBinding(),
    ),
  ];
}
