import 'package:flutter/cupertino.dart';
import 'package:kuttab/models/login-data-model.dart';
import 'package:kuttab/models/user-model.dart';
import 'package:kuttab/repository/auth-repo.dart';

class LoginViewModel with ChangeNotifier {
  final authRepo = AuthRepository();
  LoginData data = LoginData();

  setSchoolId(int value) {
    data.schoolId = value;
  }

  setUsername(String value) {
    data.username = value;
  }

  setPassword(String value) {
    data.password = value;
  }

  bool _loading = false;
  bool get loading => _loading;
  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Map<String, dynamic> loginDatatoJson() => {
        "username": data.username,
        "password": data.password,
        "school_id": data.schoolId
      };

  Future<void> loginApi() async {
    setLoading(true);
    authRepo.loginApi(loginDatatoJson()).then((value) async {
      setLoading(false);

      if (value == null) {
        print("Error");
      }
      UserModel um = UserModel.fromJson(value);
      print(um.token);
    });
  }
}
