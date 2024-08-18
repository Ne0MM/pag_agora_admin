import 'package:flutter/material.dart';
import 'package:pag_agora_admin/features/login/presentation/widgets/login_data_input.dart';
import 'package:pag_agora_admin/features/login/presentation/widgets/login_send_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key, 
    required this.setEmail, 
    required this.setPassword,
    required this.obscurePassword,
    required this.loading,
    required this.logLoginView,
    this.suffixCallBack,
  });

  final ValueChanged<String> setEmail;
  final ValueChanged<String> setPassword;
  final bool obscurePassword;
  final bool loading;
  final VoidCallback? suffixCallBack;
  final VoidCallback logLoginView;

  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(32.0, 0.0, 0.0, 0.0),
            child: Text("Acesse sua conta", style: TextStyle(color: Theme.of(context).colorScheme.surface, fontSize: 28),),
          ),
          LoginDataInput(
            onChanged: setEmail, 
            labelText: "Email",
            prefixIcon: Icon(Icons.email, color: Theme.of(context).colorScheme.surface,),
          ),
          LoginDataInput(
            onChanged: setPassword, 
            labelText: "Senha",
            prefixIcon: Icon(Icons.lock, color: Theme.of(context).colorScheme.surface,),
            obscureText: obscurePassword,
            suffixIcon: obscurePassword? Icons.visibility : Icons.visibility_off,
            suffixCallBack: suffixCallBack,
          ),
          LoginSendButton(
            loading: loading, 
            logLoginView: logLoginView
          ),
        ],
      ),
    );
  }
}