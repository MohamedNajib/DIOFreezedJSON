import 'package:dio_freezed_json/core/remote/interfaces/base_client_generator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_holder_client.freezed.dart';

@freezed
class PlaceHolderClient extends BaseClientGenerator with _$PlaceHolderClient {
  const PlaceHolderClient._() : super();
  //const factory PlaceHolderClient.posts() = _Posts;
  const factory PlaceHolderClient.login(
      {required String userName, required String password}) = _Login;

  const factory PlaceHolderClient.loginUI(
      {required String userName, required String password}) = _LoginUI;

  @override
  String get baseURL {
    return when(
        login: (_, __) => "https://intapi.cooopnet.com/api/v1/",
        loginUI: (_, __) => "https://student.valuxapps.com/api/");
  }

  @override
  dynamic get body {
    return when(
      login: (_, __) => null,
      loginUI: (_, __) => {"email": "cebt11@gmail.com", "password": "123456"},
    );
  }

  @override
  Map<String, dynamic> get header {
    return when(
      login: (_, __) => {},
      loginUI: (_, __) => {"lang": "ar", "Content-Type": "application/json"},
    );
  }

  @override
  String get method {
    return when(
      login: (_, __) => 'GET',
      loginUI: (_, __) => 'POST',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return when(
        login: (user, pass) =>
            {"Shh_Civil_Id": user, "Shh_Membership_Id": pass},
        loginUI: (u, p) => null);
  }

  @override
  String get path {
    return when(
        login: (_, __) => "Shh/GetByCivilIdAndMembership/",
        loginUI: (_, __) => "login/");
  }
}

//return null;
//   maybeWhen(
//   orElse: () {
//     return null;
//   },
// );
