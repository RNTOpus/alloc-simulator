import 'package:alo_simulator/utils/validator.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginForm extends StatefulWidget {
  GlobalKey<FormState> loginFormKey;
  TextEditingController emailController;
  TextEditingController passwordController;

  LoginForm(
      {Key? key,
      required this.loginFormKey,
      required this.emailController,
      required this.passwordController})
      : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.loginFormKey,
      child: Column(children: [
        SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: widget.emailController,
                  validator: (value) {
                    return Validator.validateEmail(value ?? "");
                  },
                  decoration: InputDecoration(
                    filled: true,
                    labelText: "E-mail",
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                TextFormField(
                  obscureText: _showPassword,
                  controller: widget.passwordController,
                  validator: (value) {
                    return Validator.validatePassword(value ?? "");
                  },
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() => _showPassword = !_showPassword);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Icon(
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    filled: true,
                    labelText: "Senha",
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
