class LoginDataModel {

  String email;
  String password;

  LoginDataModel({
    this.email = "",
    this.password = "",
  });

  setPassword(String password){
    this.password = password;
  }

  setEmail(String email){
    this.email = email;
  }

}