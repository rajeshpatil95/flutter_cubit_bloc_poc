import 'dart:convert';
import 'package:flutter_cubit_bloc_poc/utils/extensions.dart';

import '../../utils/mock_server.dart';
import '../../models/island.dart';
import '../../resources/test_response.dart';
import '../base_request.dart';

class IslandRequest with MockServer {
  Future<List<IslandModel>> fetchIslands() async {
    final response = await mockApiCall(
        body: TestResponse.testIsland,
        method: HttpMethod.get,
        callBackDelay: CallBackDelay.CALLBACK_DELAY_SHORT);

    if (response.isSuccessful()) {
      return jsonDecode(response.body)
          .map<IslandModel>((dynamic todo) => IslandModel.fromJson(todo))
          .toList();
    } else {
      throw Exception("Exception occured at fetchTodo()");
    }
  }
}
