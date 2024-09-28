import 'package:flutter/material.dart';
import 'package:videosharing/common/services/storage.dart';
import 'package:videosharing/src/auth/views/login_screen.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');

    if (accessToken == null) {
      return const LoginPage();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('cart page'),
      ),
      body: Text('cart page'),
    );
  }
}
