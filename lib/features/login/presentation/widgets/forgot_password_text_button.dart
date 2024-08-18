import 'package:flutter/material.dart';

class ForgotPasswordTextButton extends StatelessWidget {
  const ForgotPasswordTextButton({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(16,8,16,0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, "/forgot_password"), 
            child: const Text("Esqueci minha senha", style: TextStyle(fontSize: 12),)
          )
        ],
      ),
    );
  }
}