import 'package:flutterassignment/domain/repository/repository.dart';

import '../model/api_response_model.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl(super.apiService);

  @override
  Future<ApiResponseModel?> getData() async {
    final response = await apiService.getData();
    if (response.statusCode == 200) {
      final data = response.body;
      if (data is Map) {
        return ApiResponseModel.fromJson(data);
      }
    }
    return null;
  }
}
