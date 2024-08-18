import 'package:flutter/material.dart';
import 'package:pag_agora_admin/features/login/presentation/widgets/forgot_password_text_button.dart';
import 'package:pag_agora_admin/features/login/presentation/widgets/sign_up_button.dart';
import 'package:pag_agora_admin/features/login/presentation/widgets/login_data_input.dart';
import 'package:pag_agora_admin/features/login/presentation/widgets/login_send_button.dart';
import 'package:provider/provider.dart';
import 'package:pag_agora_admin/features/login/presentation/viewmodels/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context){

    LoginViewModel loginViewModel = context.watch<LoginViewModel>();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginDataInput(
            onChanged: loginViewModel.setEmail, 
            labelText: "Email",
            prefixIcon: const Icon(Icons.email),
          ),
          LoginDataInput(
            onChanged: loginViewModel.setPassword, 
            labelText: "Senha",
            prefixIcon: const Icon(Icons.lock),
            obscureText: loginViewModel.obscurePassword,
            suffixIcon: loginViewModel.obscurePassword? Icons.visibility : Icons.visibility_off,
            suffixCallBack: () => loginViewModel.setObscurePassword(),
          ),
          const ForgotPasswordTextButton(),
          LoginSendButton(
            loading: loginViewModel.loading, 
            logLoginView: loginViewModel.logLoginView
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 0 , 24, 0),
            child: Divider(),
          ),
          const SignUpButton(),
        ],
      ),
    );
  }
}