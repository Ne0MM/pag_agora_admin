import 'package:flutter/material.dart';
import 'package:pag_agora_admin/core/themes/app_theme.dart';
import 'package:pag_agora_admin/features/forgot_password/presentation/viewmodels/forgot_password_view_model.dart';
import 'package:pag_agora_admin/features/forgot_password/presentation/views/forgot_password_view.dart';
import 'package:pag_agora_admin/features/login/presentation/viewmodels/login_view_model.dart';
import 'package:pag_agora_admin/features/login/presentation/views/login_view.dart';
import 'package:pag_agora_admin/features/sign_up/presentation/viewmodels/sign_up_view_model.dart';
import 'package:pag_agora_admin/features/sign_up/presentation/views/sign_up_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LoginViewModel()),
      ChangeNotifierProvider(create: (_) => ForgotPasswordViewModel()),
      ChangeNotifierProvider(create: (_) => SignUpViewModel())
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      theme: AppTheme.theme,
      routes: {
        '/login' : (context) => const LoginView(),
        '/forgot_password' : (context) => const ForgotPasswordView(),
        '/sign_up' : (context) => const SignUpView(),
      },
    );
  }
}