import 'package:flutter/material.dart';
import 'package:market_place/features/auth/sing_in/register_navigator.dart';
import 'package:market_place/features/auth/sing_in/register_view_model.dart';

import '../../../base.dart';
import '../../../core/widgets/custom_app_bar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  static const String routName = "Register";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends BaseView<Register, RegisterViewModel> implements RegisterNavigator{
  @override
  void initState() {
    super.initState();
    viewModel.navigator=this;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  RegisterViewModel initViewModel() {
    return RegisterViewModel();
  }
}
