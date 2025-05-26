import 'package:bloc_project/config/app_urls.dart';
import 'package:bloc_project/data/network/network_services_api.dart';
import 'package:bloc_project/models/user/user_model.dart';

class LoginRepository {
  final _api=NetworkServicesApi();
  Future<LoginRes> loginApi(dynamic data)async{
    final response=await _api.postApi(AppUrls.loginApiUrl, data);
    return LoginRes.fromJson(response);
  }

}

