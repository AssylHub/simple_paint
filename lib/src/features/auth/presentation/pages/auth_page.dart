import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_paint/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:simple_paint/src/core/router/router.dart';
import 'package:simple_paint/src/core/service/injectable/injectable_service.dart';
import 'package:simple_paint/src/core/theme/theme.dart';
import 'package:simple_paint/src/core/utils/extensions/gap_extension.dart';
import 'package:simple_paint/src/core/widgets/custom_button.dart';
import 'package:simple_paint/src/core/widgets/custom_text_field.dart';
import 'package:simple_paint/src/features/auth/domain/requests/auth_request.dart';
import 'package:simple_paint/src/features/auth/presentation/bloc/auth_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BaseBlocWidget<AuthBloc, AuthEvent, AuthState>(
          bloc: getIt<AuthBloc>(),
          listener: (context, state) {
            state.whenOrNull(
              authenticated: (vm) {
                context.pushNamed(RouteNames.main);
              },
              failure: (s) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("User could not authenticate.")),
                );
              },
            );
          },
          builder: (context, state, bloc) {
            return Padding(
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
                        Text("Вход", style: TextStyles.extraTitle),
                        CustomTextField(
                          controller: emailController,
                          hintText: "e-mail",
                          labelText: "Введите электронную почту",
                        ),
                        CustomTextField(
                          controller: passwordController,
                          hintText: "Подтверждение пароля",
                          labelText: "Введите пароль",
                        ),
                      ].addGap(20),
                    ),
                  ),
                  CustomButton(
                    text: 'Войти',
                    onTap: () {
                      getIt<AuthBloc>().add(
                        AuthEvent.signIn(
                          authRequest: AuthRequest(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          ),
                        ),
                      );
                    },
                    hasGradient: true,
                    textColor: AppColors.white,
                  ),
                  CustomButton(
                    onTap: () {
                      context.pushNamed(RouteNames.register);
                    },
                    text: "Регистрация",
                  ),
                ].addGap(20),
              ),
            );
          },
        ),
      ),
    );
  }
}
