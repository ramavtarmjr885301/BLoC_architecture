class AppExceptions implements Exception {
  final _message;
  final _prefix;
  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_message$_prefix';
  }
}

class NoInternetException extends AppExceptions {
  NoInternetException([String? message]): super(message, 'No Internet Connection');
    
}
class AuthException extends AppExceptions {
  AuthException([String? message]): super(message, 'You are not authenticated');
    
}
class timeOutException extends AppExceptions {
  timeOutException([String? message]): super(message, 'Time out try again');
    
}
class FetchDataException extends AppExceptions {
  FetchDataException([String? message]): super(message, 'Error during communication');
    
}
class BadRequestException extends AppExceptions {
  BadRequestException([String? message]): super(message, 'Bad request');
    
}
class UnauthorisedException extends AppExceptions {
  UnauthorisedException([String? message]): super(message, 'Unauthorised Access');
    
}
class InvalidInputException extends AppExceptions {
  InvalidInputException([String? message]): super(message, 'Invalid Input');
    
}


// class NoInternetException extends AppExceptions {
//   NoInternetException([String? message]): super(message, 'No Internet Connection');
    
// }
