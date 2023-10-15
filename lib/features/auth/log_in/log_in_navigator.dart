import 'package:market_place/base.dart';
import 'package:market_place/core/models/user_model.dart';

abstract class LogInNavigator extends BaseNavigator{
 goToRegesterScreen();
 goToForgetPasswordScreen();
 goToHome(UserModel user);

}