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
          prefixIcon,
          const SizedBox(width: 8.0), // Space between the icon and the text field
          Expanded(
            child: TextFormField(
              obscureText: obscureText,
              onChanged: onChanged,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: labelText,
                suffixIcon: IconButton(
                  onPressed: suffixCallBack?? suffixCallBack, 
                  icon: Icon(suffixIcon)
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}