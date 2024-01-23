import 'package:flutter/material.dart';
import 'package:streaming_app/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    email: '',
    uid: '',
    username: '',
  );
  
  User get user => _user;

  setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
