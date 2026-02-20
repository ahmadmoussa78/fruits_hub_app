import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/Functions/build_error_bar.dart';
import 'package:fruits_hub/core/services/get_it_service.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/core/widgets/custom_progress_hud.dart';
import 'package:fruits_hub/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:fruits_hub/features/domain/repos/auth_repo.dart';

import '../../../home/presentation/views/home_view.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(title: "تسجيل دخول"),
        body: const SigninViewBodyBlocConsumer(),
      ),
    );
  }
}

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          Navigator.pushNamed(context, HomeView.routeName);
        }
        if (state is SigninFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgessHud(
          isLoading: state is SigninLoading ? true : false,
          child: const SigninViewBody(),
        );
      },
    );
  }
}
