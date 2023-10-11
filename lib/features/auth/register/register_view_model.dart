import 'package:market_place/base.dart';
import 'package:market_place/features/auth/register/register_navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/firebasee/firebase_utiles.dart';
import '../../../core/models/user_model.dart';

class RegisterViewModel extends BaseViewModel<RegisterNavigator>{
 Future<void> onRegisterClicked(String name,String emailAddress, String password) async {
 try {
  navigator!.showLoading();
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
   email: emailAddress,
   password: password,
  );
  //add user to fire store
  UserModel userModel=UserModel(id: credential.user?.uid??"", name: name, email: emailAddress);
  FireBaeUtiles.addUserToFireStore(userModel);
  navigator!.hideDialog();
  navigator!.showMessage("Successful creat account ");
  navigator!.hideDialog();
  navigator!.goToHome();
 } on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
   navigator!.hideDialog();
   navigator!.showMessage("The password provided is too weak ");
   print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
   navigator!.hideDialog();
   navigator!.showMessage("email-already-in-use ");
   print('The account already exists for that email.');
  }
 } catch (e) {
  print(e);
 }

 }
}