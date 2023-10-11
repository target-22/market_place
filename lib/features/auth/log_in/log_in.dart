import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/base.dart';
import 'package:market_place/core/style/app_color.dart';
import 'package:market_place/core/widgets/custom_app_bar.dart';
import 'package:market_place/core/widgets/custome_button.dart';
import 'package:market_place/features/auth/log_in/log_in_navigator.dart';
import 'package:market_place/features/auth/log_in/log_in_view_model.dart';
import 'package:provider/provider.dart';

import '../../../core/widgets/customPassword.dart';
import '../../../core/widgets/custom_email_form_field.dart';
import '../forget_password/forget_password.dart';
import '../register/register.dart';

class LogIN extends StatefulWidget {
 // const LogIN({super.key});

  static const String routName = "LogIn";

  @override
  State<LogIN> createState() => _LogINState();
}

class _LogINState extends BaseView<LogIN, LogInViewModel>
    implements LogInNavigator {
  String? hintText;
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  var key = GlobalKey<FormState>();
@override
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
                Center(
                  child: Text("Login",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppColor.red,
                          )),
                ),
                SizedBox(
                  height: 50.h,
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
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Password",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomPasswordForm(
                  controller: passwordcontroller,
                  hintText: "Enter Your Password",
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(children: [
                  Spacer(),
                  InkWell(
                    onTap:goToForgetPasswordScreen ,
                    child: Text(
                      "Forget Password ?",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 17.sp, color: Color(0xff969B9B)),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10.h,
                ),
                CustomeButton(AppColor.red, "Login", onPressed ),
                SizedBox(
                  height: 10.h,
                ),
                Row(children: [
                  SizedBox(width: 50),
                  Container(
                    height: 1,
                    width: 60,
                    color: AppColor.deebGray,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Or Login With",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 17.sp, color: Color(0xff969B9B)),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 1,
                    width: 60,
                    color: AppColor.deebGray,
                  )
                ]),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                    ),
                    Image.asset("assets/images/facebook.png"),
                    Image.asset("assets/images/google.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/tweter.png"),
                  ],
                ),
                SizedBox(
                  height: 90.h,
                ),
                    InkWell(
                      onTap:goToRegesterScreen ,
                      child: RichText(
                          text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(text: "Don not have an account?",
                                    style: Theme.of(context).textTheme.bodySmall),
                                TextSpan(text: "Register",
                                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColor.red))
                              ]


                          )
                      ),
                    )]),
            ),
          ),
        ),
      ),
    );
  }

  @override
  LogInViewModel initViewModel() {
    return LogInViewModel();
  }

  @override
  goToRegesterScreen() {
  Navigator.pushReplacementNamed(context, Register.routName);
  }

   onPressed() {
    if(key.currentState?.validate()==true) {
     print("hello");
      viewModel.onLogInPressed;
    }
  }

  @override
  goToForgetPasswordScreen() {
    Navigator.pushReplacementNamed(context, ForgetPassword.routName);
  }
}
