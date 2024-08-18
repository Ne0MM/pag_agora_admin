import 'package:flutter/material.dart';
import 'package:pag_agora_admin/features/login/data/models/login_data_model.dart';

class LoginViewModel extends ChangeNotifier{

  bool _loading = false;
  bool _obscurePassword = true;
  bool _keepConected = false;
  LoginDataModel _loginData = LoginDataModel();

  bool get loading => _loading;
  bool get obscurePassword => _obscurePassword;
  bool get keepConected => _keepConected;
  LoginDataModel get loginData => _loginData;

  setPassword(String password){
    _loginData.setPassword(password);
    notifyListeners();
  }

  setEmail(String email){
    _loginData.setEmail(email);
    notifyListeners();
  }

  setObscurePassword(){
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }

  setKeepConected(bool? value){
    _keepConected = value ?? false;
    notifyListeners();
  }

  logLoginView(){
    _loading = !_loading;
    notifyListeners();
  }

}