import 'package:get/get.dart';


class RemoteApiService extends GetConnect{
  Future<Response> getData() => get('https://api.npoint.io/bc69ae1f6991da81ab9a');
}