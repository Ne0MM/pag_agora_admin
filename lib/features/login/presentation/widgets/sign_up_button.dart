import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8, 16.0, 0),
      child: SizedBox(
        width: double.infinity,
        height: 40,
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, "/sign_up"), 
          child: const Text("Cadastrar-se"),
        ),
      ),
    );
  }
}