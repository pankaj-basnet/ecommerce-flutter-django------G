import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    print("--------------going to entrypoint screen");
    return Scaffold(
      body: Column(
        children: [
          Text('=========******======='),
          TextButton(
              onPressed: () {
                context.go('/home');
              },
              child: Text("login here <------"))
        ],
      ),
    );
  }
}
