import 'package:bloc_project/config/app_urls.dart';
import 'package:bloc_project/models/user/user_model.dart';

import '../../data/network/network_services_api.dart';

class UsersRepos{

  final _api=NetworkServicesApi();
  Future<UsersListModel> usersDataApi()async{
    final response=await _api.getApi(AppUrls.usersListApiUrl,);
    return UsersListModel.fromJson(response);
  }
}