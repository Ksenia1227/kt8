import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(children: [
        ElevatedButton(onPressed: () {}, child: Text('Войти')),
        TextButton(
            onPressed: () => controller.toRegistration(),
            child: Text('Регистрация')),
      ])),
    );
  }
}
