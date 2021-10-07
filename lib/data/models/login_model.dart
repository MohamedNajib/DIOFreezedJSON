import 'package:dio_freezed_json/core/remote/interfaces/base_network_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel extends BaseNetworkModel<LoginModel> {
  int? shh_Id;
  int? shh_Membership_Id;
  String? shh_Title;
  String? shh_Name_Title;
  String? shh_Name;
  String? shh_FamilyName;
  String? shh_Civil_Id;
  String? shh_birthdate;
  bool? shh_Gender;
  String? gender_Name;
  int? shh_Marital_Status_Id;
  String? marital_Status_Description;
  int? shh_JobTitle_Id;
  String? job_Title_Name;
  int? shh_Area_Id;
  String? area_Name;
  int? shh_Section_Id;
  String? section_Name;
  String? shh_Street;
  String? shh_Avenu_No;
  String? shh_Home_No;
  String? shh_Floor_No;
  String? shh_Apartment_No;
  String? shh_PostalBox_No;
  String? shh_Postal_Code;
  String? shh_Home_Phone_No;
  String? shh_Work_Phone;
  String? shh_Mobile;
  String? shh_Mobile2;
  String? shh_Work_At;
  String? shh_Work_Address;
  String? shh_Email;
  int? shh_Type_Id;
  String? shareholder_Type_Desc;
  int? shh_Status_Id;
  String? shareholder_Status_Desc;
  int? shh_Bank_Id;
  String? bank_Name;
  String? bank_EN_Name;
  String? bank_Code;
  String? shh_Account_No;
  String? shh_Guardian_Name;
  int? shh_Kinship_Id;
  String? kinship_Name;
  String? shh_Session_No;
  String? shh_Session_Date;
  bool? shh_IsInActiveOnPOS;
  bool? shh_PrintNameOnInvoice;
  bool? shh_HasProfits;
  bool? shh_IsDataCompleted;
  String? shh_POSName;
  String? shh_Notes;
  dynamic unShearDate;
  String? f_C;
  int? sharesCount;
  String? address_ID;
  bool? is_Subscribed_in_Administration;
  String? voucherNumber;
  String? voucherDate;
  int? written_By;
  String? written_At;
  int? last_Updated_By;
  String? last_Updated_At;

  LoginModel(
      {this.shh_Id,
      this.shh_Membership_Id,
      this.shh_Title,
      this.shh_Name_Title,
      this.shh_Name,
      this.shh_FamilyName,
      this.shh_Civil_Id,
      this.shh_birthdate,
      this.shh_Gender,
      this.gender_Name,
      this.shh_Marital_Status_Id,
      this.marital_Status_Description,
      this.shh_JobTitle_Id,
      this.job_Title_Name,
      this.shh_Area_Id,
      this.area_Name,
      this.shh_Section_Id,
      this.section_Name,
      this.shh_Street,
      this.shh_Avenu_No,
      this.shh_Home_No,
      this.shh_Floor_No,
      this.shh_Apartment_No,
      this.shh_PostalBox_No,
      this.shh_Postal_Code,
      this.shh_Home_Phone_No,
      this.shh_Work_Phone,
      this.shh_Mobile,
      this.shh_Mobile2,
      this.shh_Work_At,
      this.shh_Work_Address,
      this.shh_Email,
      this.shh_Type_Id,
      this.shareholder_Type_Desc,
      this.shh_Status_Id,
      this.shareholder_Status_Desc,
      this.shh_Bank_Id,
      this.bank_Name,
      this.bank_EN_Name,
      this.bank_Code,
      this.shh_Account_No,
      this.shh_Guardian_Name,
      this.shh_Kinship_Id,
      this.kinship_Name,
      this.shh_Session_No,
      this.shh_Session_Date,
      this.shh_IsInActiveOnPOS,
      this.shh_PrintNameOnInvoice,
      this.shh_HasProfits,
      this.shh_IsDataCompleted,
      this.shh_POSName,
      this.shh_Notes,
      this.unShearDate,
      this.f_C,
      this.sharesCount,
      this.address_ID,
      this.is_Subscribed_in_Administration,
      this.voucherNumber,
      this.voucherDate,
      this.written_By,
      this.written_At,
      this.last_Updated_By,
      this.last_Updated_At});

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);

  @override
  LoginModel fromJson(Map<String, dynamic> json) {
    return LoginModel.fromJson(json);
  }
}
