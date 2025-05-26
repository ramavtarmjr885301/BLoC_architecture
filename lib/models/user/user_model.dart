class LoginRes {
  LoginRes({
    required this.success,
    required this.statusCode,
    required this.message,
    required this.data,
  });
  late final bool success;
  late final String statusCode;
  late final String message;
  late final Data data;

  LoginRes.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statusCode = json['statusCode'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['statusCode'] = statusCode;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.userId,
    required this.token,
    required this.name,
    required this.email,
    required this.mobile,
    required this.companies,
  });
  late final String userId;
  late final String token;
  late final String name;
  late final String? email;
  late final String? mobile;
  late final List<Companies> companies;

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    token = json['token'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    companies =
        List.from(json['companies']).map((e) => Companies.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userId'] = userId;
    _data['token'] = token;
    _data['name'] = name;
    _data['email'] = email;
    _data['mobile'] = mobile;
    _data['companies'] = companies.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Companies {
  Companies({
    required this.companyId,
    required this.name,
    required this.logo,
    required this.status,
  });
  late final String companyId;
  late final String name;
  late final String? logo;
  late final String status;

  Companies.fromJson(Map<String, dynamic> json) {
    companyId = json['companyId'];
    name = json['name'];
    logo = json['logo'] ?? '';
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['companyId'] = companyId;
    _data['name'] = name;
    _data['logo'] = logo;
    _data['status'] = status;
    return _data;
  }
}
class UsersListModel {
  UsersListModel({
    required this.success,
    required this.statusCode,
    required this.message,
    required this.data,
  });
  late final bool success;
  late final String statusCode;
  late final String message;
  late final List<Data> data;

  UsersListModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statusCode = json['statusCode'];
    message = json['message'];
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['statusCode'] = statusCode;
    _data['message'] = message;
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}


