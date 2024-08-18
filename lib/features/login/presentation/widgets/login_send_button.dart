import 'package:flutter/material.dart';

class LoginSendButton extends StatelessWidget {
  const LoginSendButton({super.key, required this.loading, required this.logLoginView});

  final bool loading;
  final VoidCallback logLoginView;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 16.0),
      child: SizedBox(
        width: double.infinity,
        height: 40,
        child: ElevatedButton.icon(
          onPressed: logLoginView, 
          style: ElevatedButton.styleFrom(
            disabledBackgroundColor: Theme.of(context).colorScheme.onSurfaceVariant
          ),
          label: loading?
            const Text("")
          :
            const Text("Entrar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, height: -0.3),),
          icon: loading?
            const SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(),
            )
          :
            const Icon(Icons.arrow_forward, size: 25,),
          iconAlignment: IconAlignment.end,
        ),
      )
    ); 
  }
}