import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/features/auth/sing_in/register_navigator.dart';
import 'package:market_place/features/auth/sing_in/register_view_model.dart';
import 'package:provider/provider.dart';

import '../../../base.dart';
import '../../../core/style/app_color.dart';
import '../../../core/widgets/customPassword.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_email_form_field.dart';
import '../../../core/widgets/custome_button.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  static const String routName = "Register";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends BaseView<Register, RegisterViewModel> implements RegisterNavigator{
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
                  Text(
                    "Forget Password ?",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 17.sp, color: Color(0xff969B9B)),
                  ),
                ]),
                SizedBox(
                  height: 10.h,
                ),
                CustomeButton(AppColor.red, "Login", onPressed() ),
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

           ] ),
          ),
        ),
      ),
    ));
  }

  @override
  RegisterViewModel initViewModel() {
    return RegisterViewModel();
  }

  onPressed() {}
}
