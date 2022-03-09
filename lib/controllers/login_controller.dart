import 'package:email_validator/email_validator.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  @observable
  bool loading = false;

  @observable
  String email = "";

  @observable
  String password = "";

  @observable
  bool passwordVisible = false;

  @observable
  bool loggedin = false;

  @computed
  bool get isEmailValid => EmailValidator.validate(email);

  @computed
  bool get isPasswordValid => password.length >= 6;

  @computed
  bool get isFormValid => isEmailValid && isPasswordValid && !loading;

  @action
  void setEmail(String v) => email = v;

  @action
  void setPassword(String v) => password = v;

  @action
  void togglePasswordVisible() => passwordVisible = !passwordVisible;

  @action
  Future<void> login() async {
    loading = true;
    await Future.delayed(const Duration(seconds: 2));
    loggedin = true;
    loading = false;
  }
}
