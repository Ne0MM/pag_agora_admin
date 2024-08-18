import 'package:flutter/material.dart';

class LoginDataInput extends StatelessWidget {
  const LoginDataInput({
    super.key, 
    required this.onChanged, 
    required this.labelText, 
    required this.prefixIcon, 
    this.suffixIcon,
    this.suffixCallBack,
    this.obscureText = false,
  });

  final ValueChanged<String> onChanged;
  final String labelText;
  final Icon prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final VoidCallback? suffixCallBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 0),
      child: Row(
        children: [
          // Container to provide spacing between the icon and the text field
          Expanded(
            child: TextFormField(
              style: TextStyle(color: Theme.of(context).colorScheme.surface),
              obscureText: obscureText,
              onChanged: onChanged,
              cursorColor: Theme.of(context).colorScheme.surface,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).colorScheme.surface),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).colorScheme.surface),
                ),
                prefixIcon: prefixIcon,
                suffixIcon: IconButton(
                  onPressed: suffixCallBack?? suffixCallBack, 
                  icon: Icon(suffixIcon)
                ),
                suffixIconColor: Theme.of(context).colorScheme.surface,
                labelText: labelText,
                labelStyle: TextStyle(color: Theme.of(context).colorScheme.surface),
              ),
            ),
          ),
        ],
      ),
    );
  }
}