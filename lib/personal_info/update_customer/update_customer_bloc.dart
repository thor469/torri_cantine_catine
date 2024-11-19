import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:torri_cantine_app/personal_info/model/request/update_customer_request.dart';
import 'package:torri_cantine_app/registration/model/request/registration_request.dart';

import '../model/response/update_customer_response.dart';
import '../service/update_customer_service.dart';

part 'update_customer_bloc.freezed.dart';
part 'update_customer_event.dart';
part 'update_customer_state.dart';

class UpdateCustomerBloc extends Bloc<UpdateCustomerEvent, UpdateCustomerState> {
  final UpdateCustomerService service;
  UpdateCustomerBloc(this.service) : super(const _Initial());

  @override
  Stream<UpdateCustomerState> mapEventToState(
    UpdateCustomerEvent event,
  ) async* {
    yield* event.when(
      update: _updateCustomer,
    );
  }

  Stream<UpdateCustomerState> _updateCustomer(int? id, String? firstName, String? lastName, String? phone, Billing? billing, Shipping? shipping) async* {
    yield const UpdateCustomerState.initial();
    yield const UpdateCustomerState.loading();
    try {
      final response = await service.updateCustomer(
        UpdateCustomerRequest(
            id: id,
            first_name: firstName,
            last_name: lastName,
          billing: billing,
          shipping: shipping,
        ),
      );
      yield UpdateCustomerState.loaded(response);
    } catch (e) {
      yield const UpdateCustomerState.error();
    }
  }




}
