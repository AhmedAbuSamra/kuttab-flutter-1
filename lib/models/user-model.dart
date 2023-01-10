import 'dart:convert';

UserModel? userFromJson(String str) => UserModel.fromJson(json.decode(str));

String userToJson(UserModel? data) => json.encode(data!.toJson());

class UserModel {
  UserModel({
    this.id,
    this.uid,
    this.username,
    this.email,
    this.emailVerifiedAt,
    this.password,
    this.type,
    this.schoolId,
    this.nationality,
    this.country,
    this.city,
    this.address,
    this.birthDate,
    this.mobileNumber,
    this.telephoneNumber,
    this.image,
    this.firstName,
    this.middleName,
    this.lastName,
    this.academic,
    this.createdBy,
    this.updatedBy,
    this.rememberToken,
    this.token,
  });

  int? id;
  String? uid;
  String? username;
  String? email;
  dynamic emailVerifiedAt;
  String? password;
  String? type;
  int? schoolId;
  String? nationality;
  String? country;
  String? city;
  String? address;
  DateTime? birthDate;
  int? mobileNumber;
  int? telephoneNumber;
  String? image;
  String? firstName;
  String? middleName;
  String? lastName;
  String? academic;
  int? createdBy;
  int? updatedBy;
  dynamic rememberToken;
  dynamic token;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        uid: json["uid"],
        username: json["username"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        password: json["password"],
        type: json["type"],
        schoolId: json["school_id"],
        nationality: json["nationality"],
        country: json["country"],
        city: json["city"],
        address: json["address"],
        birthDate: DateTime.parse(json["birth_date"]),
        mobileNumber: json["mobile_number"],
        telephoneNumber: json["telephone_number"],
        image: json["image"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        academic: json["academic"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        rememberToken: json["remember_token"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "username": username,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "password": password,
        "type": type,
        "school_id": schoolId,
        "nationality": nationality,
        "country": country,
        "city": city,
        "address": address,
        "birth_date":
            "${birthDate!.year.toString().padLeft(4, '0')}-${birthDate!.month.toString().padLeft(2, '0')}-${birthDate!.day.toString().padLeft(2, '0')}",
        "mobile_number": mobileNumber,
        "telephone_number": telephoneNumber,
        "image": image,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "academic": academic,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "token": token,
      };
}
