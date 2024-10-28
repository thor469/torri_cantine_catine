import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/account/model/request/account_request.dart';
import 'package:torri_cantine_app/account/model/request/add_address_request.dart';
import 'package:torri_cantine_app/account/model/response/account_response.dart';
import 'package:torri_cantine_app/account/model/response/add_address_response.dart';
import 'package:torri_cantine_app/account/model/response/address_response.dart';
import 'package:torri_cantine_app/account/service/account_service.dart';
import 'package:torri_cantine_app/account/service/address_service.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory_impl.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final AccountService service;
  AccountBloc(this.service) : super(const _Initial());

  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) async* {
    yield* event.when(
      fetch: _account,
      fetchAddress: getAddress,
      updateAddress: updateAddress,
    );
  }

  Stream<AccountState> _account(String email) async* {
    LocalStorage customer = LocalStorage();
    yield const AccountState.initial();
    yield const AccountState.loading();
    try {
      var isNotLogged = await customer.getTokenId() == null;

      // print('@@@@@@@@@@@@@@@@@@@@ isNotLogged ####################################');
      // print('--${isNotLogged}--');
      // print('//@@@@@@@@@@@@@@@@@@@@ isNotLogged ####################################');

      if (isNotLogged) {
        print('###### isNotLogged  #############################################');
        yield const AccountState.notLogged();
      } else {

        print('###### DARIO ACCOUNT #############################################');

        final response = await service.getAccount(AccountRequest(email: email));
        print(email);
        print('###### DARIO ACCOUNT #############################################');
        print(response);
        print(response.user);
        print('///// DARIO ACCOUNT #############################################');
        if(response.user.length==0) {
          yield const AccountState.notLogged();
        } else {
          await customer.setCustomerId(response.user.first.id);
          yield AccountState.loaded(response);
        }

      }
    } on ApiException catch (e, s) {
      print('AccountState error');
      print(e.httpMessage);
      print(e.httpCode);
      yield const AccountState.error();
    }
  }


  Stream<AccountState>  getAddress() async*{
    yield const AccountState.loading();
    try{
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApiCart().dio;
      var codeInfo = await dio.request(
        '/wp-json/wp/v2/user_addresses',
        options: Options(
          method: 'GET',
        ),
      );
      AddressResponse data = AddressResponse.fromJson(codeInfo.data);
      yield AccountState.loadedAddress(data);
    }
    catch (e){
      yield const AccountState.error();
    }
  }

  Stream<AccountState> updateAddress(AddAddressRequest request, String id) async*{
    yield const AccountState.loading();
    try{
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApiCart().dio;
      var codeInfo = await dio.request(
        '/wp-json/wp/v2/user_addresses/$id',
        data: {
          "id" : id,
          "first_name": request.first_name,
          "last_name": request.last_name,
          "company": request.company,
          "address_1": request.address_1,
          "address_2": request.address_2,
          "city": request.city,
          "state": request.state,
          "postcode": request.postcode,
          "country": request.country,
          "email": request.email,
          "phone": request.phone,
          "notes": request.notes,
          "type": request.type,
          "is_default": request.is_default,
        },
        options: Options(
          method: 'PUT',
        ),
        queryParameters: {
          "type" : request.type
        },
      );
      AddressResponse data = AddressResponse.fromJson(codeInfo.data);
      yield AccountState.loadedAddress(data);
    }on DioError catch(e){
      if (kDebugMode) {
        print(e.message);
      }
      yield AccountState.error();
    }
  }


  Stream<AccountState> deleteAddress(AddAddressRequest request, String id) async*{
    yield const AccountState.loading();
    try{
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApiCart().dio;
      var codeInfo = await dio.request(
        '/wp-json/wp/v2/user_addresses/$id',
        data: {
          "id" : id,
          "first_name": request.first_name,
          "last_name": request.last_name,
          "company": request.company,
          "address_1": request.address_1,
          "address_2": request.address_2,
          "city": request.city,
          "state": request.state,
          "postcode": request.postcode,
          "country": request.country,
          "email": request.email,
          "phone": request.phone,
          "notes": request.notes,
          "type": request.type,
          "is_default": request.is_default,
        },
        queryParameters: {
          "type": request.type,
        },
        options: Options(
          method: 'DELETE',
        ),
      );
      AddressResponse data = AddressResponse.fromJson(codeInfo.data);
      getAddress();
    }on DioError catch(e){
      if (kDebugMode) {
        print(e.message);
      }
    }
  }


}
