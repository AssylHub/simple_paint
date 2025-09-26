import 'package:flutter/material.dart';
import 'package:simple_paint/src/core/service/injectable/injectable_service.dart';
import 'package:simple_paint/src/core/theme/theme.dart';
import 'package:simple_paint/src/core/utils/extensions/gap_extension.dart';
import 'package:simple_paint/src/core/widgets/custom_button.dart';
import 'package:simple_paint/src/core/widgets/custom_text_field.dart';
import 'package:simple_paint/src/features/auth/domain/requests/auth_request.dart';
import 'package:simple_paint/src/features/auth/presentation/bloc/auth_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final pwConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Регистрация", style: TextStyles.extraTitle),
                    CustomTextField(
                      controller: nameController,
                      hintText: "Имя",
                      labelText: "Введите ваше имя",
                    ),
                    CustomTextField(
                      controller: emailController,
                      hintText: "e-mail",
                      labelText: "Ваша электронная почта",
                    ),
                    CustomTextField(
                      controller: passwordController,
                      hintText: "Пароль",
                      labelText: "8-16 символов",
                    ),
                    CustomTextField(
                      controller: pwConfirmController,
                      hintText: "Подтверждение пароля",
                      labelText: "8-16 символов",
                    ),
                  ].addGap(20),
                ),
              ),
              CustomButton(
                onTap: () async {
                  getIt<AuthBloc>().add(
                    AuthEvent.signUp(
                      authRequest: AuthRequest(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      ),
                    ),
                  );
                },
                text: "Зарегистрироваться",
              ),
            ].addGap(20),
          ),
        ),
      ),
    );
  }
}
