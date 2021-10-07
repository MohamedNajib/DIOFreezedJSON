import 'package:dio_freezed_json/core/remote/interfaces/base_network_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'use_data.g.dart';

@JsonSerializable()
class UserData extends BaseNetworkModel<UserData> {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? image;
  int? points;
  int? credit;
  String? token;

  UserData(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.image,
      this.points,
      this.credit,
      this.token});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);

  @override
  UserData fromJson(Map<String, dynamic> json) {
    return UserData.fromJson(json);
  }
}
