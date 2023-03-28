import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_auth/features/login/models/login_request.dart';
import 'package:riverpod_auth/features/login/models/login_states.dart';
import 'package:riverpod_auth/features/login/validator/email.validator.dart';
import 'package:riverpod_auth/features/login/validator/password.validator.dart';
import 'package:riverpod_auth/features/login/widgets/app_textfield.dart';
import 'package:riverpod_auth/features/login/widgets/loading_icon.dart';
import 'package:riverpod_auth/features/login/provider/auth/auth_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  final emailInput = TextEditingController();
  final passwordInput = TextEditingController();

  @override
  void initState() {
    emailInput.text = '';
    passwordInput.text = '';
    super.initState();
  }

  @override
  void dispose() {
    emailInput.dispose();
    passwordInput.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  void _onSubmitHandler() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    }

    final LoginRequest loginRequest =
        LoginRequest(email: emailInput.text, password: passwordInput.text);

    ref.read(authProvider.notifier).signInRequest(loginRequest);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Screen'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text('Sign In', style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 20),
                AppTextField(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  focusNode: emailFocusNode,
                  onFieldSubmitted: (val) {
                    emailInput.text = val;
                    FocusScope.of(context).requestFocus(passwordFocusNode);
                  },
                  onChanged: (val) => setState(() => emailInput.text = val),
                  validator: (val) => emailFormatValidator(val!),
                ),
                const SizedBox(height: 10),
                AppTextField(
                  hintText: 'Password',
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  focusNode: passwordFocusNode,
                  onFieldSubmitted: (val) {
                    passwordInput.text = val;
                    FocusScope.of(context).unfocus();
                  },
                  onChanged: (val) => setState(() => passwordInput.text = val),
                  validator: (val) => passwordFormatValidator(val!),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed:
                          emailInput.text.isEmpty || passwordInput.text.isEmpty
                              ? null
                              : _onSubmitHandler,
                      child: ref.watch(authProvider) == LoginState.loading()
                          ? const LoadingIcon()
                          : const Text('Sign In')),
                ),
              ],
            ),
          ),
        ));
  }
}
