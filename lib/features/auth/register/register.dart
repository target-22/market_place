import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/features/auth/register/register_navigator.dart';
import 'package:market_place/features/auth/register/register_view_model.dart';
import 'package:provider/provider.dart';
import '../../../base.dart';
import '../../../core/style/app_color.dart';
import '../../../core/widgets/customPassword.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_email_form_field.dart';
import '../../../core/widgets/custom_text_form.dart';
import '../../../core/widgets/custome_button.dart';
import '../../home/home.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  static const String routName = "Register";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends BaseView<Register, RegisterViewModel> implements RegisterNavigator{
  String? hintText;
  TextEditingController controller=TextEditingController();
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
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: Text("Register",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColor.red,
                      )),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "User Name",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextForm(hintText: "Enter your name",controller: controller),
                SizedBox(
                  height: 35.h,
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
                  height: 30.h,
                ),
                SizedBox(width: 100,),
                Center(child: CustomeButton(AppColor.red, "Register", onPressed))



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

  void onPressed() {
    if (key.currentState?.validate() == true) {
      print ("hi==============================");
      viewModel.onRegisterClicked(
        emailcontroller.text,
        passwordcontroller.text,
        controller.text,
      );
    }
  }


  @override
  goToHome() {
   Navigator.pushReplacementNamed(context, Home.routName);
  }
  }

