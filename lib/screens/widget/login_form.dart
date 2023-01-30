import 'package:anyar_retail/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/dimension.dart';
import '../../../widget/base_button.dart';
import '../../../widget/base_text_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  static final _formKey = GlobalKey<FormState>();
  static final emailController = TextEditingController();
  static final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            BaseTextInput(
              controller: emailController,
              label: 'Email',
              suffixIcon: const Icon(
                CupertinoIcons.person_crop_circle_fill,
                color: Colors.black54,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email is required!';
                }
                return null;
              },
            ),
            const SizedBox(height: Dimension.GAP_SIZE_DEFAULT),
            BaseTextInput(
              controller: passwordController,
              obscureText: true,
              label: 'Password',
              suffixIcon: const Icon(
                Icons.visibility,
                color: Colors.black54,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }

                return null;
              },
            ),
            const SizedBox(height: Dimension.GAP_SIZE_DEFAULT),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 100.0),
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: Dimension.GAP_SIZE_DEFAULT,
            ),
            BaseButton(
              titleButton: 'Login',
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, '/dashboard');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
