import 'package:flutterassignment/data/service/remote_api_service.dart';

import '../../data/model/api_response_model.dart';

abstract class Repository {
  final RemoteApiService apiService;

  Repository(this.apiService);

  Future<ApiResponseModel?> getData();
}
