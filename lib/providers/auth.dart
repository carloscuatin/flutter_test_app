import 'package:flutter/foundation.dart';

class AuthProvider with ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  set isLoggedIn(bool isLoggedIn) {
    _isLoggedIn = isLoggedIn;
    notifyListeners();
  }

  emailLogin(String email, String password) {
    if (email == 'test@test.com' && password == '123asd') {
      _isLoggedIn = true;
      notifyListeners();
    }
  }
}
