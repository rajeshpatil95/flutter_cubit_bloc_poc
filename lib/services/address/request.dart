import 'dart:convert';
import 'package:flutter_cubit_bloc_poc/services/base_request.dart';
import 'package:flutter_cubit_bloc_poc/utils/extensions.dart';

import '../../models/address.dart';
import '../../utils/end_points.dart';

class AddressRequest extends BaseRequest {
  Future<List<AddressModel>> fetchAddress() async {
    var response = await constructAndExecuteRequest(
        method: HttpMethod.get,
        authenticated: true,
        endpoint: Endpoints().fetchAddressList());

    if (response.isSuccessful()) {
      return jsonDecode(response.body)
          .map<AddressModel>(
              (dynamic addressModel) => AddressModel.fromJson(addressModel))
          .toList();
    } else {
      throw Exception("Exception occured at fetchAddress()");
    }
  }
}
