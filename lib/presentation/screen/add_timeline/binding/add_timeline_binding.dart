import 'package:flutterassignment/presentation/screen/add_timeline/controller/add_timeline_controller.dart';
import 'package:get/get.dart';

class AddTimelineBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => AddTimelineController());
  }

}