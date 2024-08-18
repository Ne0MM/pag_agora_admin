import 'package:flutter/material.dart';

class LoginSendButton extends StatelessWidget {
  const LoginSendButton({super.key, required this.loading, required this.logLoginView});

  final bool loading;
  final VoidCallback logLoginView;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        height: 40,
        child: ElevatedButton(
          onPressed: loading? null : logLoginView, 
          child: loading? 
            const SizedBox(
              width: 25,
              height: 25,
              child: CircularProgressIndicator(),
            )
              : 
            const Text("Entrar"),
        ),
      )
    ); 
  }
}