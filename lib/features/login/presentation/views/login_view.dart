import 'package:flutter/material.dart';
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
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(32.0, 0.0, 0.0, 0.0),
            child: Text("Acesse sua conta", style: TextStyle(color: Theme.of(context).colorScheme.surface, fontSize: 28),),
          ),
          LoginDataInput(
            onChanged: loginViewModel.setEmail, 
            labelText: "Email",
            prefixIcon: Icon(Icons.email, color: Theme.of(context).colorScheme.surface,),
          ),
          LoginDataInput(
            onChanged: loginViewModel.setPassword, 
            labelText: "Senha",
            prefixIcon: Icon(Icons.lock, color: Theme.of(context).colorScheme.surface,),
            obscureText: loginViewModel.obscurePassword,
            suffixIcon: loginViewModel.obscurePassword? Icons.visibility : Icons.visibility_off,
            suffixCallBack: () => loginViewModel.setObscurePassword(),
          ),
          LoginSendButton(
            loading: loginViewModel.loading, 
            logLoginView: loginViewModel.logLoginView
          ),
        ],
      ),
    );
  }
}