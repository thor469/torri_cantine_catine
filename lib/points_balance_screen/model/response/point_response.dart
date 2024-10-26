import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/registration/model/request/registration_request.dart';

part 'point_response.freezed.dart';
part 'point_response.g.dart';

@freezed
class PointMaxValueResponse extends ResponseBase with _$PointMaxValueResponse {
  factory PointMaxValueResponse({
    required int points,
    required int money
  }) = _PointMaxValueResponse;

  factory PointMaxValueResponse.fromJson(Map<String, dynamic> json) =>
      _$PointMaxValueResponseFromJson(json);
}

// // @freezed
// // class User with _$User {
// //   factory User({
// //     required int id,
// //     required String first_name,
// //     required String last_name,
// //     required String username,
// //     required String avatar_url,
// //     Billing? billing,
// //     Shipping? shipping,
// //   }) = _User;
// //
// //   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
// // }
