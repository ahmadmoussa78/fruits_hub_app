import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/manager/signup_cubits/signup_cubit.dart';

void buildErrorBar(BuildContext context, SignupFailure state) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(state.message)));
}
