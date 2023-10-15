import 'package:firebase_auth/firebase_auth.dart';
import 'package:market_place/base.dart';
import 'package:market_place/core/models/user_model.dart';
import '../../../core/firebasee/firebase_utiles.dart';
import 'log_in_navigator.dart';

class LogInViewModel extends BaseViewModel<LogInNavigator>{
   void onLogInPressed(String emailAddress ,String password) async {
      print("hello");

      try {
         navigator!.showLoading();
         final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
             email: emailAddress,
             password: password
         );
         // Successfully signed in; now fetch user data from Firestore
         UserModel? user = await FireBaeUtiles.getUser(credential.user?.uid ?? '');

         // Do something with the user data (e.g., save it in a shared preference)
         if (user != null) {
            // You can navigate to the home screen or perform other actions
            // You might want to pass the user data to the next screen.
            navigator!.hideDialog();
            navigator!.goToHome(user);
         }
         else{
            navigator!.hideDialog();
            navigator!.showMessage("User data not found.");
         }
      } on FirebaseAuthException catch (e) {
         navigator!.hideDialog();
         if (e.code == 'user-not-found') {
            navigator!.showMessage("No user found for that email.");
         } else if (e.code == 'wrong-password') {
            navigator!.showMessage("Wrong password provided for that user.");
         } else {
            navigator!.showMessage("Something went wrong.");
         }
      } catch (e) {
         navigator!.hideDialog();
         navigator!.showMessage("An unexpected error occurred.");
         print(e);
      }
      }
}
