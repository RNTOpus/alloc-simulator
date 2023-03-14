// import 'package:alo_simulator/services/auth.dart';
import 'package:alo_simulator/styles/alo_paddings.dart';
import 'package:alo_simulator/widgets/bottom_button.dart';
import 'package:alo_simulator/widgets/brand.dart';
import 'package:alo_simulator/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // final AuthService _api = AuthService();

  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Implementar serviço de autenticação'),
        backgroundColor: Colors.lightBlueAccent,
      ));
      // AuthRequest authRequest =
      //     AuthRequest(emailController.text, passwordController.text);

      // dynamic response = await _api.login(authRequest);

      // if (response['ErrorCode'] == null) {
      //   String accessToken = response['access_token'];
      //   // Navigator.push(
      //   //     context,
      //   //     MaterialPageRoute(
      //   //         builder: (context) => HomePage(accesstoken: accessToken)));
      // } else {
      //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //     content: Text('Error: ${response['Message']}'),
      //     backgroundColor: Colors.red.shade300,
      //   ));
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: AloPaddings.page,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Brand(),
            LoginForm(
                loginFormKey: _formKey,
                emailController: emailController,
                passwordController: passwordController),
            BottomButton(
              text: 'Entrar',
              onPressed: login,
            )
          ],
        ),
      ),
    ));
  }
}
