import 'package:flutter/material.dart';

class LoginSuperSnack extends StatelessWidget {
  const LoginSuperSnack({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, "/forgot_password"), 
            child: const Text("Esqueci a senha")
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, "/sign_up"),
            child: const Text("Não possuo conta")
          )
        ],
      )
    );
  }
}