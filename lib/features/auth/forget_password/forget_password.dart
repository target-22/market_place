import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/base.dart';
import 'package:market_place/features/auth/log_in/log_in.dart';
import 'package:provider/provider.dart';

import '../../../core/style/app_color.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_email_form_field.dart';
import '../../../core/widgets/custome_button.dart';
import 'forget_password_navegator.dart';
import 'forget_password_view_model.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  static const String routName="ForgetPassword";

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends BaseView<ForgetPassword,ForgetPasswordViewModel> implements ForgetPasswordNavegator{
  String? hintText;
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  var key = GlobalKey<FormState>();
  void initState() {
    super.initState();
    viewModel.navigator=this;
  }
  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
      create: (context) => viewModel,
      child: Scaffold(
        appBar: AppBar(
          title: CustomAppBar(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: key,
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                Image.asset("assets/images/Forgot password.png"),
                Center(
                  child: Text(
                    "Forget password",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColor.red,fontWeight:FontWeight.bold),
                  ),
                ),
                Text(
                  "Email",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomEmailFormFaild(
                  hintText: "Enter Your Email",
                  controller: emailcontroller,
                ),
               SizedBox(height: 30.h,),
                Center(child: CustomeButton(AppColor.red, "Send Code", onPressed))
                ]
            ),
          ),
        ),
      ),
    ));
  }

  @override
  ForgetPasswordViewModel initViewModel() {

    return ForgetPasswordViewModel();
  }


  onPressed() {}

  @override
  goToLogIn() {
    Navigator.pushReplacementNamed(context, LogIN.routName);
  }
}
