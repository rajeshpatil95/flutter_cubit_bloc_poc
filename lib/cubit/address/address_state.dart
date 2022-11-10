part of 'address_cubit.dart';

@immutable
abstract class AddressState {}

class AddressInitial extends AddressState {}

class AddressLoading extends AddressState {}

class AddressLoaded extends AddressState {
  final List<AddressModel>? addressList;

  AddressLoaded({this.addressList});
}

class AddressFailure extends AddressState {}
