import 'package:flutterassignment/presentation/screen/dashboard/controller/dashboard_controller.dart';
import 'package:flutterassignment/presentation/screen/dashboard/controller/home_controller.dart';
import 'package:flutterassignment/presentation/screen/dashboard/controller/timeline_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => TimelineController());
  }

}