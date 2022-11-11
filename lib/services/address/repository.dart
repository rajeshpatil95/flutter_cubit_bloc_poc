import '../../models/address.dart';
import 'request.dart';

abstract class AddressRepository {
  Future<List<AddressModel>> fetchAddress();
}

class AddressRepositoryImpl implements AddressRepository {
  AddressRequest? addressRequest = AddressRequest();

  @override
  Future<List<AddressModel>> fetchAddress() async {
    final addressList = await addressRequest!.fetchAddress();
    return addressList;
  }
}
