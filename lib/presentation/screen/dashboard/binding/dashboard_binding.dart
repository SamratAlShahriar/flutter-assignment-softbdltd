import 'package:flutterassignment/presentation/screen/dashboard/controller/dashboard_controller.dart';
import 'package:flutterassignment/presentation/screen/home/controller/home_controller.dart';
import 'package:flutterassignment/presentation/screen/timeline/controller/timeline_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => TimelineController());
  }

}