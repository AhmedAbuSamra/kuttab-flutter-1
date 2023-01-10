import 'package:kuttab/Utils/resources/app-urls.dart';
import 'package:kuttab/data/network/base-api-services.dart';
import 'package:kuttab/data/network/network-api-services.dart';

class AuthRepository {
  //This apiServices give access of this NetworkApiServices class
  BaseApiServices apiServices = NetworkApiService();
  Future<dynamic> loginApi(dynamic data) async {
    dynamic response =
        await apiServices.postApiResponse(AppUrl.adminLogin, data);
    try {
      return response;
    } catch (e) {
      throw e;
    }
  }
}
