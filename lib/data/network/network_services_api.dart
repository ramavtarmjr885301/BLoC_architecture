// ignore_for_file: constant_pattern_never_matches_value_type

import 'package:bloc_project/views/view.dart';
import 'package:http/http.dart' as http;

class NetworkServicesApi implements BaseApiservices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic jsonResponse;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw timeOutException('Time out try again');
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(String url, var data) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw timeOutException('Time out try again');
    }
    return jsonResponse;
  }
    @override
  Future<dynamic> deleteApi(String url) async {
    dynamic jsonResponse;
    try {
      final response =
          await http.delete(Uri.parse(url)).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw timeOutException('Time out try again');
    }
    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 401:
        throw UnauthorisedException();
      case 500:
        throw FetchDataException(
            'Error occurred while communicating with server');
      default:
        throw UnauthorisedException();
    }
  }
}
