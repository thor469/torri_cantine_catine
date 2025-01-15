import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/account/model/request/add_address_request.dart';
import 'package:torri_cantine_app/account/model/response/address_response.dart';
import 'package:torri_cantine_app/account/service/address_service.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory_impl.dart';

part 'address_bloc.freezed.dart';
part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final AddressService service;
  AddressBloc(this.service) : super(const _Initial());

  @override
  Stream<AddressState> mapEventToState(
      AddressEvent event,
  ) async* {
    yield* event.when(
      addAddress: states
    );
  }

  Stream<AddressState> states() async*{
  }

  Future<void> addAddress(AddAddressRequest request) async {
    try{
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApiCart().dio;
      var codeInfo = await dio.request(
        '/wp-json/wp/v2/user_addresses',
        data: {
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
          method: 'POST',
        ),
      );
      AddAddressRequest data = AddAddressRequest.fromJson(codeInfo.data);
      // await service.addAddress(request);
    }on DioError catch(e){
      if (kDebugMode) {
        print(e.message);
      }
    }
  }

  Future<void>  updateAddress(AddAddressRequest request, String id) async{
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
          "type" : request.type
        },
        options: Options(
          method: 'PUT',
        ),
      );
      AddressResponse data = AddressResponse.fromJson(codeInfo.data);
    }on DioError catch(e){
      if (kDebugMode) {
        print(e.message);
      }
    }
  }





}
