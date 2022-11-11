import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/address.dart';
import '../../services/address/repository.dart';

part 'address_state.dart';

class AddressCubit extends Cubit<AddressState> {
  final AddressRepository? repository;

  AddressCubit({this.repository}) : super(AddressInitial());

  void fetchAddress() async {
    emit(AddressLoading());
    List<AddressModel>? addressList = await repository?.fetchAddress();
    emit(AddressLoaded(addressList: addressList as List<AddressModel>));
  }
}
