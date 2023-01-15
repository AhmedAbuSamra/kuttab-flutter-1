import 'dart:convert';

LoginData? loginDataFromJson(String str) =>
    LoginData.fromJson(json.decode(str));

String loginDataToJson(LoginData? data) => json.encode(data!.toJson());

class LoginData {
  LoginData({
    this.username,
    this.password,
    this.schoolId,
  });

  String? username;
  String? password;
  String? schoolId;

  factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
        username: json["username"],
        password: json["password"],
        schoolId: json["school_id"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "school_id": schoolId,
      };
}
