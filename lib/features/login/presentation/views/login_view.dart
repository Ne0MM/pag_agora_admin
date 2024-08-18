import 'package:flutter/material.dart';
import 'package:pag_agora_admin/features/login/presentation/widgets/login_form.dart';
import 'package:pag_agora_admin/features/login/presentation/widgets/login_super_snack.dart';
import 'package:provider/provider.dart';
import 'package:pag_agora_admin/features/login/presentation/viewmodels/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context){

    LoginViewModel loginViewModel = context.watch<LoginViewModel>();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          LoginForm(
            setEmail: loginViewModel.setEmail, 
            setPassword: loginViewModel.setPassword, 
            obscurePassword: loginViewModel.obscurePassword, 
            loading: loginViewModel.loading, 
            logLoginView: loginViewModel.logLoginView,
          ),
          const LoginSuperSnack(),
        ]
      )
    );
  }
}