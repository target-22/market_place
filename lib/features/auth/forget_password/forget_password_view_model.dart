import 'package:firebase_auth/firebase_auth.dart';
import 'package:market_place/base.dart';

import 'forget_password_navegator.dart';

class ForgetPasswordViewModel extends BaseViewModel<ForgetPasswordNavegator>{
   void sendResetCode(String email) async {
      navigator!.showLoading();
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email);
      navigator!.hideDialog();
      navigator!.showMessage("please check your mail to reset password.");
      navigator!.goToLogIn();
   }
}